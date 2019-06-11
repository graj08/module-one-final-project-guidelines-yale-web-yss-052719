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
            price += (ri.quantity * (ri.ingredient.price/ri.ingredient.quantity_at_grocery))
        end
        price
    end
    
    def groceries_needed(user)
        #get a user's current ingredients (UserIngredients)
        #get a recipe's ingredients needed
        #subtract to find what extra ingredients are needed
        pantry = user.user_ingredients
        needs = self.recipe_ingredients

        groceries_needed = {}
        needs.map do |ri|
            if pantry.find_by(ingredient_id: ri.ingredient.id, user: user).nil?
                groceries_needed[ri.ingredient]= ri.quantity
            else excess_needed = pantry.find_by(ingredient_id: ri.ingredient.id, user: user).quantity - ri.quantity
            groceries_needed[ri.ingredient]= [-excess_needed,0].max
            end
        end
        groceries_needed
    end


    def marginal_cost(user)
        #price those extra ingredients
        groceries_needed = self.groceries_needed(user)
        price_groceries(groceries_needed)
    end

    def price_groceries(cart)
        total = 0
        cart.each do |ingredient, quantity|
            total += (quantity * (ingredient.price/ingredient.quantity_at_grocery))
        end
        total
    end

    


end