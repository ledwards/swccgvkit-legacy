#!/usr/bin/env ruby
require 'config/environment'

dry = false

c = Card.find_by_title("Admiral Motti (V)")
old_title = c.title
c.title = "Admiral Motti, Battlestation Coordinator"
old_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
new_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
c.thumbnail_url.gsub!(old_title_sanitized, new_title_sanitized)
c.image_url.gsub!(old_title_sanitized, new_title_sanitized)
c.vslip_url.gsub!(old_title_sanitized, new_title_sanitized)
c.save

c = Card.find_by_title("Fear Will Keep Them in Line (V)")
old_title = c.title
c.title = "Tarkin Doctrine"
old_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
new_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
c.thumbnail_url.gsub!(old_title_sanitized, new_title_sanitized)
c.image_url.gsub!(old_title_sanitized, new_title_sanitized)
c.vslip_url.gsub!(old_title_sanitized, new_title_sanitized)
c.save

c = Card.find_by_title("They're On Dantooine (V)")
old_title = c.title
c.title = "Dantooine Engineering Corps"
old_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
new_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
c.thumbnail_url.gsub!(old_title_sanitized, new_title_sanitized)
c.image_url.gsub!(old_title_sanitized, new_title_sanitized)
c.vslip_url.gsub!(old_title_sanitized, new_title_sanitized)
c.save

c = Card.find_by_title("Eject! Eject! (V)")
old_title = c.title
c.title = "Eject! Eject! & Imperial Atrocity"
old_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
new_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
c.thumbnail_url.gsub!(old_title_sanitized, new_title_sanitized)
c.image_url.gsub!(old_title_sanitized, new_title_sanitized)
c.vslip_url.gsub!(old_title_sanitized, new_title_sanitized)
c.save

c = Card.find_by_title("Death Squadron (V)")
old_title = c.title
c.title = "Hoth Blockade"
old_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
new_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
c.thumbnail_url.gsub!(old_title_sanitized, new_title_sanitized)
c.image_url.gsub!(old_title_sanitized, new_title_sanitized)
c.vslip_url.gsub!(old_title_sanitized, new_title_sanitized)
c.save


c = Card.find_by_title("A Dark Time For the Rebellion (V)")
old_title = c.title
c.title = "Imperial War Machine"
old_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
new_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
c.thumbnail_url.gsub!(old_title_sanitized, new_title_sanitized)
c.image_url.gsub!(old_title_sanitized, new_title_sanitized)
c.vslip_url.gsub!(old_title_sanitized, new_title_sanitized)
c.save

c = Card.find_by_title("Bad Feeling Have I (V)")
old_title = c.title
c.title = "The Quick and Easy Path"
old_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
new_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
c.thumbnail_url.gsub!(old_title_sanitized, new_title_sanitized)
c.image_url.gsub!(old_title_sanitized, new_title_sanitized)
c.vslip_url.gsub!(old_title_sanitized, new_title_sanitized)
c.save

c = Card.find_by_title("Secure Route (V)")
old_title = c.title
c.title = "We'll Take the Long Way"
old_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
new_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
c.thumbnail_url.gsub!(old_title_sanitized, new_title_sanitized)
c.image_url.gsub!(old_title_sanitized, new_title_sanitized)
c.vslip_url.gsub!(old_title_sanitized, new_title_sanitized)
c.save

c = Card.find_by_title("Rebel Planners (V)")
old_title = c.title
c.title = "Hidden Fortress"
old_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
new_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
c.thumbnail_url.gsub!(old_title_sanitized, new_title_sanitized)
c.image_url.gsub!(old_title_sanitized, new_title_sanitized)
c.vslip_url.gsub!(old_title_sanitized, new_title_sanitized)
c.save

c = Card.find_by_title("Mon Mothma (V)")
old_title = c.title
c.title = "Senator Mon Mothma"
old_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
new_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
c.thumbnail_url.gsub!(old_title_sanitized, new_title_sanitized)
c.image_url.gsub!(old_title_sanitized, new_title_sanitized)
c.vslip_url.gsub!(old_title_sanitized, new_title_sanitized)
c.save

c = Card.find_by_title("He Is Not Ready (V)")
old_title = c.title
c.title = "He Is Not Ready & Imperial Propaganda"
old_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
new_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
c.thumbnail_url.gsub!(old_title_sanitized, new_title_sanitized)
c.image_url.gsub!(old_title_sanitized, new_title_sanitized)
c.vslip_url.gsub!(old_title_sanitized, new_title_sanitized)
c.save

c = Card.find_by_title("Restricted Access (V)")
old_title = c.title
c.title = "Imperial Detention"
old_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
new_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
c.thumbnail_url.gsub!(old_title_sanitized, new_title_sanitized)
c.image_url.gsub!(old_title_sanitized, new_title_sanitized)
c.vslip_url.gsub!(old_title_sanitized, new_title_sanitized)
c.save

c = Card.find_by_title("I Don't Need Their Scum Either (V)")
old_title = c.title
c.title = "Hear Me Baby, Hold Together (V)"
old_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
new_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
c.thumbnail_url.gsub!(old_title_sanitized, new_title_sanitized)
c.image_url.gsub!(old_title_sanitized, new_title_sanitized)
c.vslip_url.gsub!(old_title_sanitized, new_title_sanitized)
c.save

c = Card.find_by_title("Ralltiir: Imperial Supply Route (V)")
old_title = c.title
c.title = "Ralltiir: Supply Route"
old_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
new_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
c.thumbnail_url.gsub!(old_title_sanitized, new_title_sanitized)
c.image_url.gsub!(old_title_sanitized, new_title_sanitized)
c.vslip_url.gsub!(old_title_sanitized, new_title_sanitized)
c.save

c = Card.find_by_title("Yoda, Master of the Force (V)")
old_title = c.title
c.title = "Yoda, Great Warrior"
old_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
new_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
c.thumbnail_url.gsub!(old_title_sanitized, new_title_sanitized)
c.image_url.gsub!(old_title_sanitized, new_title_sanitized)
c.vslip_url.gsub!(old_title_sanitized, new_title_sanitized)
c.save

c = Card.find_by_title("Breached Defenses (V)")
old_title = c.title
c.title = "Brached Defenses & Molatar"
old_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
new_title_sanitized = old_title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("&","").downcase
c.thumbnail_url.gsub!(old_title_sanitized, new_title_sanitized)
c.image_url.gsub!(old_title_sanitized, new_title_sanitized)
c.vslip_url.gsub!(old_title_sanitized, new_title_sanitized)
c.expansion = "Virtual Set 18"
c.save