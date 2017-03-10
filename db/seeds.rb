# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ing1 = Ingredient.create(name: "vanille")
ing2 =Ingredient.create(name: "coffe")
ing3 = Ingredient.create(name: "menthe")

cocktail1 = Cocktail.create(name: "mojito")

dose1 = Dose.create(description: "tres bon cocktail a la menthe")
dose1.cocktail = cocktail1
dose1.ingredient = ing1
dose2 = Dose.create(description: "tres bon cocktail au café")
dose2.cocktail = cocktail1
dose2.ingredient = ing2
dose3 = Dose.create(description: "Cocktaile vanille")
dose3.cocktail =  cocktail1
dose3.ingredient = ing3
