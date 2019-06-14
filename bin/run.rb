require_relative '../config/environment'
require_relative '../db/seed'
require_relative '../bin/user_interface'

efficient_chef = Program.new()
user = efficient_chef.get_user
efficient_chef.print_recipes
recipe_id = efficient_chef.get_recipe_selection
while recipe_id != "quit"
    recipe_id = efficient_chef.display_recipe(recipe_id)
    efficient_chef.execute_and_show_marginal(user, recipe_id)
    recipe_id = efficient_chef.get_recipe_selection
end
efficient_chef.view_shopping_list(user)


