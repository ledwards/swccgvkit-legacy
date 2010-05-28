#!/usr/bin/env ruby
require 'config/environment'

# This file was only used to initialize the database.
# DO NOT USE IT FOR REGULAR UPDATES
# It will delete data

files = ["script/lightside.cdf", "script/darkside.cdf"]

files.each do |current_file|
  
  file = File.new(current_file,"r") #do both files
  cards = Card.get_cards_from_card_file(current_file)

end