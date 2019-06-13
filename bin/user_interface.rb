# class Program

# prompt = TTY::Prompt.new

# user = User.new(name: prompt.ask("Thanks for opening The Efficient Chef. This is a command-line-interface tool meant to help optimize your grocery list.

# First, what is your name?"))

# Recipe.all.each do |recipe|
#     puts "[#{recipe.id}] #{recipe.name}"
# end

# recipe_id = prompt.ask("All available recipes are listed above. Please enter the number of your recipe selection")

# anchor_selection = Recipe.all.find_by(id: recipe_id)
# ingredients = anchor_selection.recipe_ingredients
# new_ingredients = anchor_selection.groceries_needed(user)

# puts "
# *****************************
# #{anchor_selection.name}
# Servings: #{anchor_selection.servings}
# *****************************

# #{ingredients.map do |ri|
# "#{ri.ingredient.name}: #{ri.quantity}
# "
# end}

# Directions: #{anchor_selection.process}"


# response = prompt.yes?("You have chosen #{recipe_id}. The recipe is displayed. Do you want to select this recipe?")
# marginal_recipes = user.marginal_cost_recipes
#     user.do_recipe(Recipe.all.find_by(id: recipe_id))
#     puts "Great. You now have #{Meal.all.select do |meal| meal.user == user end.size} meals taken care of"
#     puts "But you still have more meals to plan! Here are additional recipes you could make with a low cost:"
# puts "

# **************************
# Marginal cost recipes
# **************************
# Recipe ID   Name        Marginal cost
# #{marginal_recipes.map do |recipe, cost|
# "#{recipe.id}  #{recipe.name}:  $#{cost}
# "
# end}
# "

# next_add = prompt.ask("Which recipe would you like to add?")













