#!/usr/bin/env ruby
require 'config/environment'

dry = false

expansion = "Virtual Set 6.2"

side = "Dark"

titles = ["4-LOM with Concussion Rifle (V)",
"Altering the Deal",
"Blockade Support Ship",
"Boba Fett in Slave I (V)",
"Bossk in Hound's Tooth (V)",
"Broken Concentration (V)",
"Cloud City: Dining Room (V)",
"Comlink (V)",
"Dathomir Witch",
"Deployment Orders",
"Drop! (V)",
"Force Field (V)",
"Galen's Lightsaber, Vader's Gift",
"Ni Chuba Na?? (V)",
"Power of the Sith",
"Program Trap (V)",
"Rancor Mount",
"So Be It, Jedi",
"Why Didn't You Tell Me? (V)"]

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

titles = ["At Peace (V)",
  "Beast Rider",
  "Dark Approach (V)",
  "Gundark",
  "Kaadu (V)",
  "Security Breach",
  "Thrown Back (V)"]

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
