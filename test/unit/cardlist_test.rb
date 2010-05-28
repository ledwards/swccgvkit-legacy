require 'test_helper'

class CardlistTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  #fixtures :cardlists
  
  def test_cart
    cart = Cardlist.new
    cart.title = "Cart"
    cart.user_id = 1
    assert cart.save
  end
end
