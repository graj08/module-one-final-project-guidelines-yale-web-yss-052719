class Recipe < ActiveRecord::Base

    has_many :recipe_ingredients
    has_many :meals
    has_many :ingredients, through: :recipe_ingredients
    has_many :users, through: :meals

    def add_recipe(ingredient_hash)
        ingredient_hash.each do |ingredient, value|
            RecipeIngredient.create(ingredient: ingredient, recipe: self, quantity: value)
        end
    end


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
        leftovers = user.leftovers
        needs = self.recipe_ingredients

        groceries_needed = {}
        needs.map do |ri|
            if leftovers[ri.ingredient].nil?
                groceries_needed[ri.ingredient]= ri.quantity
            else excess_needed = leftovers[ri.ingredient] - ri.quantity
                groceries_needed[ri.ingredient]= [-excess_needed,0].max
            end
        end
        groceries_needed
    end


    def marginal_cost(user)
        #get the extra groceries needed (note: not adjusted to quantity_at_grocery)
        groceries_needed = self.groceries_needed(user)
        #price those extra ingredients
        price_groceries(groceries_needed)
    end

    def price_groceries(cart)
        total = 0
        cart.each do |ingredient, quantity|
            total += ((quantity/ingredient.quantity_at_grocery).ceil * (ingredient.price))
        end
        total
    end



end