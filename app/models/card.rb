class Card < ActiveRecord::Base
  validates_presence_of :title, :expansion, :side, :card_type
  validates_uniqueness_of :title,
                          :scope => [:expansion, :side, :card_type],
                          :message => ", title, expansion, card type, and side must be collectively unique", 
                          :case_sensitive => false
                         
  belongs_to :line_item
    
  has_attached_file :vslip
  has_attached_file :back_vslip
  has_attached_file :card_image, :styles => { :large => "", :thumb => "62x87#" }
  has_attached_file :back_card_image
  
  acts_as_ferret :fields => {
    :title => {},
    :side => {},
    :expansion => {},
    :card_type => {},
    :title_for_sort => {:index => :untokenized}
  }

  def title_for_sort
    return self.title
  end
  
  def truncated_title(trunc_length)
    if title.length > trunc_length
      title.first(trunc_length) + "..."
    else
      title
    end
  end
  
  def self.new_card_from_holotable_line(line)
    card_re = /card\s"(.*?)"\s"([<>ï]*)(.*)\(([^V]*)\)\\n(\S*)\s(.*?)\[(.*)\]\s?\\nSet:\s(.*?)\\n/
    
    if card_re.match(line).nil?
      card = nil
    else
      image_url,uniqueness,title,destiny,side,type,rarity,expansion = card_re.match(line).captures
      title.gsub!('ï','')
      title.strip!
      type.strip!
      
      vslip_file_name = "/images/vslips" + image_url.gsub("/t_","/").gsub("/starwars","") + ".png"
      card_image_file_name = "http://www.swccgonline.com/images/cards" + image_url + ".gif"
      
      if type == "Objective"
        objective_re = /(.+)\s?\/\s?(.+)/ # split Front and Back of Objective
        front, back = objective_re.match(title).captures
        
        vslip_file_name.gsub!("TWOSIDED/", "")
        back_vslip_file_name = vslip_file_name.gsub(front,back)        
        back_card_image_file_name = card_image_file_name.gsub(front,back)
      end
        
      card = Card.new(:title => title,
                      :side => side,
                      :expansion => expansion,
                      :card_type => type)

      if File.exist? vslip_file_name
        card.vslip = File.open(vslip_file_name)
      end
      
      if File.exist? card_image
        card.card_image = File.open(card_image)
      end
      
      if File.exist? back_vslip_file_name
        card.back_vslip = File.open(back_vslip_file_name)
      end
      
      if File.exist? back_card_image
        card.back_card_image = File.open(back_card_image_file_name)
      end

    end
    return card
  end
  
  def self.get_cards_from_card_file(filename)
    cards = []
    file = File.new(filename,"r") #do both files
    while (line = file.gets)
      cards << Card.new_card_from_holotable_line(line)
    end
    return cards
  end
  
end
