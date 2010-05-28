#!/usr/bin/env ruby
require 'config/environment'

cards = Card.all

cards.each do |card|
  if card.title.index("&") or card.title.index("?") or card.title.index("(") or card.title.index("-")
    card.vslip_url = "/images/vslips/" +
      card.expansion.gsub('Set','').gsub(" ","").gsub("'","").downcase.strip + "-" +
      card.side.downcase.strip + '/' +
      card.title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("?","").gsub("-","").gsub("&","").downcase +
      '.png'

    card.thumbnail_url = "http://www.swccgonline.com/images/cards/starwars/" + 
      card.expansion.gsub('Set','').gsub(" ","").gsub("'","") + "-" +
      card.side.strip + "/" + 
      "t_" +
      card.title.gsub('(v)','').gsub('(V)','').gsub(' / ','_').gsub(" ","").gsub("'","").gsub(".","").gsub("!","").gsub("(AI)","AI").gsub(",","").gsub(":","").gsub("?","").gsub("-","").gsub("&","").downcase +
      '.gif'

    card.save
  end
end