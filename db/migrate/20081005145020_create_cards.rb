class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.string :title
      t.string :expansion
      t.string :side
      t.string :thumbnail_url
      t.string :image_url
      t.string :vslip_url

      t.timestamps
    end
  end

  def self.down
    drop_table :cards
  end
end
