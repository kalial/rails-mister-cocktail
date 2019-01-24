# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
new_cocktail = Cocktail.new(name: "Test")
new_cocktail.save

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")






# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

# require 'open-uri'

# puts "fetch API"
#   url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
#   input = open(url).read
#   ingredients = JSON.parse(input)

# puts "Start seeding"
#   ingredients['drinks'].each do |ingredient|

#     new_ingredient = Ingredient.new(name: ingredient['strIngredient1'])
#     new_ingredient.save
#     puts "created & saved #{new_ingredient.name}"

#   end
# puts "End of seeding"

# puts "Create Cocktails"

# names = ["Moscow Mule", "Gin Tonic", "Espresso Martini", "Gin Mule", "Bali Belly Burst", "Whiskey Sour", "Whiskey Coke", "Vodka Martini"]

# names.each do |name| 
#   cocktail = Cocktail.new(name: name)
#   cocktail.save
# end

# puts "End seeding cocktails"

# puts "Start seeding URLS"
# tonic = "https://www.foxandbriar.com/wp-content/uploads/2016/07/Spanish-Gin-Tonics-7-of-19.jpg"

# moscoe_mule = "https://static01.nyt.com/images/2016/07/15/dining/Mule-web2/Mule-web2-videoSixteenByNineJumbo1600.jpg"

# espresso = "https://cdn.liquor.com/wp-content/uploads/2016/09/16092441/espresso-martini-1200x628-social.jpg"

# whiskey_sour = "https://cdn.liquor.com/wp-content/uploads/2017/11/06162323/amaretto-sour-1200x628-social.jpg"

# random = "https://assets.punchdrink.com/wp-content/uploads/2017/10/Article-Alaska-Cocktail-Recipe-Three-Ingredient-Cocktails-Robert-Simonson.jpg"

# a = Cocktail.find(1)
# a.remote_photo_url = moscoe_mule
# b = Cocktail.find(2)
# b.remote_photo_url = tonic
# c = Cocktail.find(3)
# c.remote_photo_url = espresso
# d = Cocktail.find(4)
# d.remote_photo_url = moscoe_mule
# e = Cocktail.find(5)
# e.remote_photo_url = random
# f = Cocktail.find(6)
# f.remote_photo_url = whiskey_sour
# g = Cocktail.find(7)
# g.remote_photo_url = random
# h = Cocktail.find(8)
# h.remote_photo_url = random

# a.save
# b.save
# c.save
# d.save
# e.save
# f.save
# g.save
# h.save

# puts "completed seeding"
