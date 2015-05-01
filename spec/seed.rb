vodka = Ingredient.find_or_create :name => "Vodka", :type => "Spirit"
_whiskey = Ingredient.find_or_create :name => "Whiskey", :type => "Spirit"
white_rum = Ingredient.find_or_create :name => "White Rum", :type => "Spirit"
lime = Ingredient.find_or_create :name => "Lime", :type => "Misc"
_lemon = Ingredient.find_or_create :name => "Lemon", :type => "Misc"
mint = Ingredient.find_or_create :name => "Mint", :type => "Misc"
soda_water = Ingredient.find_or_create :name => "Soda Water", :type => "Mixer"
strawberry_mix = Ingredient.find_or_create :name => "Strawberry Mix", :type => "Mixer"
raspberry_cordial = Ingredient.find_or_create :name => "Raspberry Cordial", :type => "Mixer"
blue_curacao = Ingredient.find_or_create :name => "Blue Curacao", :type => "Liqueur"
lemonade = Ingredient.find_or_create :name => "Lemonade", :type => "Mixer"

mojito = Cocktail.find_or_create :name => "Mojito"
[white_rum, lime, mint, soda_water].each { |i| mojito.add_ingredient(i) } if mojito.ingredients.empty?

strawberry_mojito = Cocktail.find_or_create :name => "Strawberry Mojito"
[white_rum, lime, mint, soda_water, strawberry_mix].each { |i| strawberry_mojito.add_ingredient(i) } if strawberry_mojito.ingredients.empty?

fruit_tingle = Cocktail.find_or_create :name => "Fruit Tingle"
[vodka, raspberry_cordial, blue_curacao, lemonade].each { |i| fruit_tingle.add_ingredient(i) } if fruit_tingle.ingredients.empty?
