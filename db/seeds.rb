puts "destroy all database"
Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all
require 'open-uri'
require 'json'
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredient_serialized = open(url).read
parsed_ingredients = JSON.parse(ingredient_serialized)
array_of_ingredients = parsed_ingredients['drinks']
array_of_ingredients.each do |ingredient_hash|
ingredient = Ingredient.new(
  name: ingredient_hash['strIngredient1']
  )
ingredient.save!
end
cocktail = Cocktail.create!(name: "caipirinha")
dose = Dose.new
dose.description = "200ml"
dose.ingredient_id = Ingredient.first.id
dose.cocktail_id = cocktail.id
dose.save
cocktail = Cocktail.create!(name: "vodka")
cocktail = Cocktail.create!(name: "whisky")















# mint_julep = Cocktail.create!(name: "Mint Julep")
# whiskey = Cocktail.create(name: "Whiskey Sour")
# mojito = Cocktail.create(name: "Mojito")
# lemon = Ingredient.create(name: "lemon")
# ice = Ingredient.create(name: "ice")
# mint = Ingredient.create(name: "mint leaves")
# Dose.create(description: "6", ingredient: mint, cocktail: mint_julep)
# Dose.create(description: "2 oz", ingredient: ice, cocktail: whiskey)
# Dose.create(description: "1 tsp", ingredient: lemon, cocktail: mojito)



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
