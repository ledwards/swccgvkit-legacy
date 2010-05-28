#!/usr/bin/env ruby
require 'config/environment'

dry = false

expansion = "Virtual Set 17"

side = "Dark"

titles = ["A Sith's Plans",
"Black Leader",
"Black Leader (AI)",
"Galen, Secret Apprentice",
"Galen's Fighter",
"Galen's Lightsaber",
"Gift of the Master",
"Hunt Down and Destroy the Jedi / Their Fire Has Gone Out of the Universe (V)",
"If the Trace Was Correct (V)",
"Imperial Stormtrooper",
"The Force Unleashed",
"TIE Fighter Construction Facility"]

titles.each { |title|
  
  vslip_url = "/images/vslips/" +
  expansion.gsub('Set','').gsub(" ","").gsub("'","").downcase.strip + "-" +
  side.downcase.strip + '/' +
  title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("?","").gsub("-","").downcase +
  '.png'

  thumbnail_url = "http://www.swccgonline.com/images/cards/starwars/" + 
  expansion.gsub('Set','').gsub(" ","").gsub("'","") + "-" +
  side.strip + "/" + 
  "t_" +
  title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("?","").gsub("-","").downcase +
  '.gif'

  this_card = Card.new( :vslip_url => vslip_url,
                        :thumbnail_url => thumbnail_url,
                        :image_url => thumbnail_url,
                        :title => title,
                        :side => side,
                        :expansion => expansion )
  this_card.save unless dry
  puts title, side, expansion, vslip_url, thumbnail_url, "\n" if dry
}

side = "Light"

titles = ["A Jedi's Cunning",
"A Jedi's Plans",
"An Unusual Amount of Fear (V)",
"Coruscant: Jedi Archives",
"Elegant Lightsaber",
"Fallen Jedi",
"Jedi Advisor",
"Jedi Guardian",
"NOOOOOOOOOOOO! (V)",
"We'll Handle This / Duel of the Fates (V)"]

titles.each { |title|  

  vslip_url = "/images/vslips/" +
  expansion.gsub('Set','').gsub(" ","").gsub("'","").downcase.strip + "-" +
  side.downcase.strip + '/' +
  title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("?","").gsub("-","").downcase +
  '.png'

  thumbnail_url = "http://www.swccgonline.com/images/cards/starwars/" + 
  expansion.gsub('Set','').gsub(" ","").gsub("'","") + "-" +
  side.strip + "/" + 
  "t_" +
  title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("?","").gsub("-","").downcase +
  '.gif'

  this_card = Card.new( :vslip_url => vslip_url,
                        :thumbnail_url => thumbnail_url,
                        :image_url => thumbnail_url,
                        :title => title,
                        :side => side,
                        :expansion => expansion )
  this_card.save unless dry
  puts title, side, expansion, vslip_url, thumbnail_url, "\n" if dry
}
