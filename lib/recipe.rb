class Recipe < ActiveRecord::Base

    has_many :recipe_ingredients
    has_many :meals
    has_many :ingredients, through: :recipe_ingredients
    has_many :users, through: :meals

    def standalone_cost
        #get all the RecipeIngredients needed for this recipe
        #calculate the cost of each RecipeIngredient based on their prices from the Ingredients and the quantity needed in RecipeIngredients
        price=0
        self.recipe_ingredients.each do |ri|
            #binding.pry
            price += (ri.quantity * (ri.ingredient.price/ri.ingredient.quantity_at_grocery))
        end
        price
    end

    def marginal_cost(user)
        #get a user's current ingredients (UserIngredients)
        #get a recipe's ingredients needed
        #subtract to find what extra ingredients are needed
        #price those extra ingredients
    end



end