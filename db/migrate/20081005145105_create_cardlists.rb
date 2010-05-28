class CreateCardlists < ActiveRecord::Migration
  def self.up
    create_table :cardlists do |t|
      t.string :title
      
      t.integer :user_id, :null => false, :options =>
        "CONSTRAINT: fk_cardlist_users REFERENCES users(id)"

      t.timestamps
    end
  end

  def self.down
    drop_table :cardlists
  end
end
