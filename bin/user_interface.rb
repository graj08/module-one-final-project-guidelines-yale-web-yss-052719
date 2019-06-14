class Program


    def get_user
    prompt = TTY::Prompt.new
    input = prompt.ask("Thanks for opening The Efficient Chef. This is a command-line-interface tool meant to help optimize your grocery list. First, what is your name?")
    user = User.create(name: input)
    end

    def print_recipes
    #print out all the recipes
    puts "
    "
    Recipe.all.each do |recipe|
    puts "[#{recipe.id}] #{recipe.name}"
    end
    end

    def get_recipe_selection
    prompt = TTY::Prompt.new
    recipe_id = prompt.ask("Enter the ID of the recipe you would like to add, or 'quit' to exit")
    end

    def display_recipe(recipe_id)
    prompt = TTY::Prompt.new

    anchor_selection = Recipe.all.find_by(id: recipe_id)
    ingredients = anchor_selection.recipe_ingredients

    puts "
*****************************
#{anchor_selection.name}
Servings: #{anchor_selection.servings}
*****************************

    "
    ingredients.map do |ri|
    puts "#{ri.ingredient.name}: #{ri.quantity.to_f} #{ri.ingredient.measure}"
    end

    puts "
Directions: #{anchor_selection.process}
    "
    response = prompt.yes?("You have chosen ##{recipe_id}: #{Recipe.all.find_by(id: recipe_id).name}. The recipe is displayed. Do you want to select this recipe?")
    if response == true
        recipe_id
    else
        self.print_recipes
        response = self.get_recipe_selection
        response
    end
end

def execute_and_show_marginal(user, recipe_id)
    user.do_recipe(Recipe.all.find_by(id: recipe_id.to_i))
    marginal_recipes = user.marginal_cost_recipes
    marginal_recipes = marginal_recipes.sort_by do |recipe, cost|
        cost
    end
    puts "Great. You now have #{Meal.all.select do |meal| meal.user == user end.size} meals taken care of"
    puts "But you still have more meals to plan! Here are additional recipes you could make with a low cost:"
    puts "

**************************
Marginal cost recipes
**************************
Recipe ID   Name        Marginal cost"

    marginal_recipes.map do |recipe, cost|
    puts "#{recipe.id}  #{recipe.name}:  $#{cost.round(2)}"

    end
end


def view_shopping_list(user)
shopping_list = user.shopping_list
puts "

Thank you for using The Efficient Chef! Your grocery list is below."
puts "

**************************
Shopping list
**************************

Ingredient | Quantity at Grocery Store | # of grocery items to buy"
shopping_list.map do |ingredient, quantity|
puts "#{ingredient.name} | #{ingredient.quantity_at_grocery} #{ingredient.measure} | #{quantity}"
end

end






end