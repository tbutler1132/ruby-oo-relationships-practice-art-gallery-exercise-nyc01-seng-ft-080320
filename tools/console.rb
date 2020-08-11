require_relative '../config/environment.rb'

van_gogh = Artist.new("Vincent", 50.0)
picasso = Artist.new("Pablo", 10.0)

velvet_room = Gallery.new("The Velvet Room", "New York")
red_foyer = Gallery.new("The Red Foyer", "Seattle")

starry_night = Painting.new("Starry Night", 1000, van_gogh, velvet_room)
pear = Painting.new("Pear", 3400, picasso, red_foyer)




binding.pry

puts "Bob Ross rules."
