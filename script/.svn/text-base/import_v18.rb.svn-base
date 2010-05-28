#!/usr/bin/env ruby
require 'config/environment'

dry = false

expansion = "Virtual Set 18"

side = "Dark"

titles = ["3B3-10 (V)",
"Admiral Piett (V)",
"AT-AT Driver (V)",
"A Useless Gesture (V)",
"Black 1",
"Blaster Rifle (V)",
"Blizzard 4 (V)",
"Boba Fett, Relentless Bounty Hunter",
"Captain Mod Terrik",
"Carnor Jax, Royal Guard",
"Commander Daine Jir",
"Dark Waters & Krayt Dragon Bones",
"Darth Maul with Lightsaber (V)",
"Darth Vader, Betrayer of the Jedi",
"Dianoga (V)",
"Do They Have Code Clearance (V)",
"Droid Racks (V)",
"DS-61-11 in Black 11",
"Epic Duel (V)",
"Fett's Blaster Rifle (V)",
"Fleet Security Protocol",
"He's No Jedi",
"Hoth: Ice Plains (V)",
"Hutt Influence (V)",
"Imbalance & Kintan Strider (V)",
"ISB Blaster Pistol",
"Lana Dobreed & Sacrifice",
"Leave Them To Me (V)",
"Lieutenant Cecius (V)",
"Lightsaber Deficiency (V)",
"Lone Pilot (V)",
"Marquand in Blizzard 6",
"Massassi Warrior",
"Moff Tarkin, Death Star Commandant",
"No Escape (V)",
"One Beautiful Thing",
"One Bright Spot",
"P-13 & P-14",
"Ponda Baba (V)",
"Probot",
"Protocol Failure (V)",
"Remote Depot",
"Royal Escort (V)",
"Star Destroyer: Command Station",
"Tarkin's Bounty (V)",
"Tarkin's Orders (V)",
"Tatooine: Mos Espa (V)",
"T'doshok Hunting Vow",
"Thok & Thug",
"TIE Sentry Ships (V)",
"Weapon Levitation & The Empire's Back",
"We Have a Prisoner & I Can't Shake Him",
"We'll Let Fate-a Decide, Huh? (V)",
"Wipe Them Out, All of Them (V)",
"Wipe Them Out, All of Them (V)",
"You Cannot Hide Forever (V)",
"You Cannot Hide Forever (V)",
"You Overestimate Their Chances (V)"]

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

titles = ["Another Pathetica Lifeform",
  "Antilles Maneuver & Rebel Reinforcements",
  "Ascension Guns (V)",
  "Baragwin (V)",
  "Bo'Shek, Brash Smuggler",
  "Commando Training & Klor'slug",
  "Dash in Rogue 10",
  "Daughter of Skywalker (V)",
  "Desperate Reach (V)",
  "Don't Underestimate Our Chances (V)",
  "Han, Chewie and the Falcon (V)",
  "Han Solo, Courageous Smuggler",
  "He Can Go About His Business (V)",
  "Hoth: Echo Command Center (War Room)",
  "Hoth: Main Power Generators (V)",
  "I Don't Need Their Scum Either (V)",
  "Incom Corporation & Koensayr Manufacturing",
  "I've Decided to Go Back",
  "Jabba's Prize (V)",
  "Jabba, This is Your Last Chance",
  "Kashyyyk: Forest Depths",
  "Krayt Dragon Howel & Armed and Dangerous",
  "Lando Calrissian, Scoundrel (V)",
  "Leia, Optimistic Leader",
  "Let's Keep a Little Optimism Here (V)",
  "Let the Wookiee Win (V)",
  "Luke Skywalker, Strong in the Force",
  "Maneuvering Flaps & Nick of Time",
  "Mon Calamari Dockyards",
  "Obi-Wan, Crazy Wizard",
  "Odin Nesloor & First Aid",
  "Ounee Ta (V)",
  "Out of Somewhere (V)",
  "Overseer",
  "Protector (V)",
  "Red 1 (V)",
  "Reflection (V)",
  "Republic Logistics",
  "Return of the Jedi(V)",
  "Scomp Link Access (V)",
  "Snowspeeder Garrison",
  "Solo Han (V)",
  "Strong is Vader (V)",
  "Tatooine: Queen's Landing Site",
  "The First Transport is Away (V)",
  "Underworld Contacts (V)",
  "Warrior's Courage (V)",
  "Wedge in Red Squadron 1",
  "Your Insight Serves You Well (V)"]

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
