class AddPaperclipAttributes < ActiveRecord::Migration
  def self.up
    add_column :cards, :vslip_file_name,    :string
    add_column :cards, :vslip_content_type, :string
    add_column :cards, :vslip_file_size,    :integer
    add_column :cards, :vslip_updated_at,   :datetime
    
    add_column :cards, :card_image_name,    :string
    add_column :cards, :card_image_content_type, :string
    add_column :cards, :card_image_file_size,    :integer
    add_column :cards, :card_image_updated_at,   :datetime
    
    add_column :cards, :back_vslip_file_name,    :string
    add_column :cards, :back_vslip_content_type, :string
    add_column :cards, :back_vslip_file_size,    :integer
    add_column :cards, :back_vslip_updated_at,   :datetime
    
    add_column :cards, :back_card_image_name,    :string
    add_column :cards, :back_card_image_content_type, :string
    add_column :cards, :back_card_image_file_size,    :integer
    add_column :cards, :back_card_image_updated_at,   :datetime
    
    add_column :cards, :card_type, :string
  end

  def self.down
    remove_column :cards, :vslip_file_name
    remove_column :cards, :vslip_content_type
    remove_column :cards, :vslip_file_size
    remove_column :cards, :vslip_updated_at
    
    remove_column :cards, :card_image_name
    remove_column :cards, :card_image_content_type
    remove_column :cards, :card_image_file_size
    remove_column :cards, :card_image_updated_at
    
    remove_column :cards, :back_vslip_file_name
    remove_column :cards, :back_vslip_content_type
    remove_column :cards, :back_vslip_file_size
    remove_column :cards, :back_vslip_updated_at
    
    remove_column :cards, :back_card_image_name
    remove_column :cards, :back_card_image_content_type
    remove_column :cards, :back_card_image_file_size
    remove_column :cards, :back_card_image_updated_at
    
    remove_column :cards, :card_type
  end
end