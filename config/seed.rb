User.destroy_all
Meal.destroy_all
Recipe.destroy_all
RecipeIngredient.destroy_all
Ingredient.destroy_all
UserIngredient.destroy_all

elijah = User.create(name: "Elijah")
ganesh = User.create(name: "Ganesh")

potatoes = Ingredient.create(name: "potatoes",price: 2.00,quantity_at_grocery: 10,measure: "lb")
curry = Ingredient.create(name: "curry",price: 1.50,quantity_at_grocery: 8,measure: "oz")
beef = Ingredient.create(name: "beef",price: 5.00,quantity_at_grocery: 10,measure: "lb")

curryPotatoes = Recipe.create(name: "curryPotatoes", process: "Boil potates then add curry powder", servings: 6)
curryBeef = Recipe.create(name: "curryBeef", process: "Roast beef then add curry powder", servings: 2)
curryPotatoesAndBeef = Recipe.create(name: "curryPotatoesAndBeef", process: "Boil potates, roast beef, and then add curry powder", servings: 4)

RecipeIngredient.create(recipe: curryPotatoes, ingredient: potatoes, quantity: 2)
RecipeIngredient.create(recipe: curryPotatoes, ingredient: curry, quantity: 3)
RecipeIngredient.create(recipe: curryBeef, ingredient: curry, quantity: 3)
RecipeIngredient.create(recipe: curryBeef, ingredient: beef, quantity: 4)
RecipeIngredient.create(recipe: curryPotatoesAndBeef, ingredient: beef, quantity: 5)
RecipeIngredient.create(recipe: curryPotatoesAndBeef, ingredient: potatoes, quantity: 2)
RecipeIngredient.create(recipe: curryPotatoesAndBeef, ingredient: curry, quantity: 1)

binding.pry


