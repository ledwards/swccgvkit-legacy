class LineItem < ActiveRecord::Base
  belongs_to :card
  belongs_to :cardlist

  def increment_quantity
    self.quantity += 1
    self.save
  end
  
end
