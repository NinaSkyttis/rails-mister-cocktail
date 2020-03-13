mint_julep = Cocktail.create!(name: "Mint Julep")
whiskey = Cocktail.create(name: "Whiskey Sour")
mojito = Cocktail.create(name: "Mojito")
lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint = Ingredient.create(name: "mint leaves")
Dose.create(description: "6", ingredient: mint, cocktail: mint_julep)
Dose.create(description: "2 oz", ingredient: ice, cocktail: whiskey)
Dose.create(description: "1 tsp", ingredient: lemon, cocktail: mojito)



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
