class Cardlist < ActiveRecord::Base
  #validates_presence_of :title
  
  belongs_to :user
  has_many :line_items
  has_many :cards, :through => :line_items

  def add_card(card)
    # adds a card to the decklist and returns the LineItem
    li = get_line_item_by_card(card)
    #i = self.cards.index(card)
    if li.nil? #card does not exist in this cardlist
      li = LineItem.create({
        :card => card,
        :cardlist => self,
        :quantity => 1})
      self.save
      self.line_items << li
    else
      li.increment_quantity
    end
    
    self.save
    return li
  end
  
  def remove_card(card)
    # removes a card from the cardlist and returns the line_item
    @line_item = self.get_line_item_by_card(card)
    if self.line_items.delete(@line_item)
      self.save
    end
  end
  
  def clear
    self.line_items = []
    self.cards = []
  end
  
  def total_quantity
    total = 0
    self.line_items.each { |item| total += item.quantity unless item.quantity.nil? }
    total
  end
  
  def get_line_item_by_card(card)
    (self.line_items.select { |l| l.card == card }).first unless self.line_items.nil?
  end
  
end
