require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  fixtures :cards
  
  def test_existance_of_known_card
    assert Card.find(cards(:darth_vader))
  end
  
  def test_card_uniqueness
    test_card = Card.new(
      :title => cards(:darth_vader).title,
      :expansion => cards(:darth_vader).expansion,
      :side => cards(:darth_vader).side,
      :vslip_url => cards(:darth_vader).vslip_url
    )
    assert !test_card.save
  end
  
  def test_card_nonuniqueness_by_set
    test_card = Card.new(
      :title => cards(:darth_vader).title,
      :expansion => "Virtual Set 34",
      :side => cards(:darth_vader).side,
      :vslip_url => cards(:darth_vader).vslip_url
    )
    assert test_card.save
  end
  
  def test_card_nonuniqueness_by_side
    test_card = Card.new(
      :title => cards(:darth_vader).title,
      :expansion => cards(:darth_vader).expansion,
      :side => "Light",
      :vslip_url => cards(:darth_vader).vslip_url
    )
    assert test_card.save
  end
  
  def test_card_import
    line = "card \"/starwars/DeathStarII-Light/t_capitalsupport\" \"ïCapital Support (6)\nLight Admiral's Order [R]\nSet: Death Star II\n\nText: Each pilot deploys -1 (or -2 if with an admiral) aboard a capital starship. Each capital starship with a pilot character aboard is immune to attrition < 4 (or adds 2 to immunity). During each of your control phases, opponent loses 1 Force for each battleground site your general or commander controls that is related to a system you occupy.\""
    test_card = Card.new_card_from_holotable_line(line)
    assert test_card.save!
  end
  
end
