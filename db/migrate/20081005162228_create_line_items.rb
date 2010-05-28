class CreateLineItems < ActiveRecord::Migration
  def self.up
    create_table :line_items do |t|
      
      t.integer "quantity"

      t.integer :card_id, :null => false, :options =>
        "CONSTRAINT fk_line_item_cards REFERENCES cards(id)"
      t.integer :cardlist_id, :null => false, :options =>
        "CONSTRAINT fk_line_item_cardlists REFERENCES cardlists(id)"

      t.timestamps
    end
  end

  def self.down
    drop_table :line_items
  end
end
