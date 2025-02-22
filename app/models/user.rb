require 'digest/sha1'

class User < ActiveRecord::Base
  
  validates_presence_of     :name
  validates_uniqueness_of   :name, :case_sensitive => false
  
  attr_accessor             :password_confirmation
  validates_confirmation_of :password
  
  has_many :cardlists
  #attr_accessor :cardlists
  
  def add_cardlist(cardlist)
    self.cardlists ||= []
    self.cardlists << cardlist
  end
  
  def password
    @password
  end
  
  def password=(pwd)
    @password = pwd
    return if pwd.blank?
    create_new_salt
    self.hashed_password = User.encrypted_password(self.password, self.salt)
  end
  
  def validate
    errors.add_to_base("Missing password") if hashed_password.blank?
  end
  
  def self.authenticate(name, password)
    user = self.find_by_name(name)
    if user
      expected_password = encrypted_password(password, user.salt)
      if user.hashed_password != expected_password
        user = nil
      end
    end
    user
  end

  private
 
  def self.encrypted_password(password, salt)
    string_to_hash = password + "43w54e6r5t6giyhu9okuyhjrytfgy" + salt
    Digest::SHA1.hexdigest(string_to_hash)
  end
  
  def create_new_salt
    self.salt = self.object_id.to_s + rand.to_s
  end
  
end
