class Program

    def initialize
prompt = TTY::Prompt.new

input = prompt.ask("Thanks for opening The Efficient Chef. This is a command-line-interface tool meant to help optimize your grocery list. First, what is your name?")
user = User.new(name: input)

#print out all the recipes
Recipe.all.each do |recipe|
    puts "[#{recipe.id}] #{recipe.name}"
end

recipe_id = prompt.ask("All available recipes are listed above. Please enter the number of your recipe selection, or 'quit' to exit")

while recipe_id != "quit" #starts a while loop. users enter 'quit' to quit and print their shopping list

anchor_selection = Recipe.all.find_by(id: recipe_id)
ingredients = anchor_selection.recipe_ingredients
new_ingredients = anchor_selection.groceries_needed(user)

puts "
*****************************
#{anchor_selection.name}
Servings: #{anchor_selection.servings}
*****************************

#{ingredients.map do |ri|
"#{ri.ingredient.name}: #{ri.quantity}
"
end}

Directions: #{anchor_selection.process}"


response = prompt.yes?("You have chosen #{recipe_id}. The recipe is displayed. Do you want to select this recipe?")
    user.do_recipe(Recipe.all.find_by(id: recipe_id))
    marginal_recipes = user.marginal_cost_recipes
    puts "Great. You now have #{Meal.all.select do |meal| meal.user == user end.size} meals taken care of"
    puts "But you still have more meals to plan! Here are additional recipes you could make with a low cost:"
puts "

**************************
Marginal cost recipes
**************************
Recipe ID   Name        Marginal cost
#{marginal_recipes.map do |recipe, cost|
"#{recipe.id}  #{recipe.name}:  $#{cost}
"
end}
"

recipe_id = prompt.ask("Which recipe would you like to add? Enter 'quit' to exit")

end #ends the while loop. This allows users to exit by entering 'quit'

shopping_list = user.shopping_list
puts "Thank you for using The Efficient Chef! Your grocery list is below."
puts "

**************************
Shopping list
**************************

Ingredient | Quantity at Grocery Store | # of grocery items to buy
#{shopping_list.map do |ingredient, quantity|
"#{ingredient.name} | #{ingredient.quantity_at_grocery} | #{quantity}
"
end}"






end



end