class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :hashed_password
      t.string :salt

      t.timestamps
    end
    
    User.create :name => 'admin', :password => 'password', :password_confirmation => 'password'
    User.create :name => 'Guest', :password => 'password', :password_confirmation => 'password'
  end

  def self.down
    drop_table :users
  end
end

