require 'test_helper'

class CartTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  fixtures :cards
  
  def test_qty
    test_cart = Cardlist.new
    test_cart.add_card(cards(:darth_vader))
    test_cart.add_card(cards(:darth_vader))
    test_cart.add_card(cards(:darth_vader))
    assert test_cart.line_items(:first).quantity == 3
  end
  
  def test_card_to_cart
    test_cart = Cardlist.new
    test_cart.add_card(cards(:darth_vader))
    test_cart.add_card(cards(:darth_vader))
    test_cart.add_card(cards(:darth_vader))
    test_cart.add_card(cards(:darth_vaders_lightsaber))
    assert test_cart.total_quantity == 4
  end
end