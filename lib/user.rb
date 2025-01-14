class User < ActiveRecord::Base

    has_many :meals
    has_many :recipes, through: :meals
    has_many :user_ingredients
    has_many :ingredients, through: :user_ingredients

    def do_recipe(recipe, portion=1)
        #buy the ingredients
        recipe.groceries_needed(self).each do |item,amount|
            (amount * 1.0 /item.quantity_at_grocery).ceil.times do 
                buy_ingredient(item)
            end
        end

        #create the meals
        (recipe.servings * portion).round.times do
        self.meals << Meal.create(recipe: recipe)
        end
        
    end

    def buy_ingredient(ingredient)
        #if the user doesn't have an ingredient in their pantry
        if self.user_ingredients.find_by(ingredient: ingredient).nil?
        #buy it with a quantity_at_grocery
        self.user_ingredients << UserIngredient.create(user: self, ingredient: ingredient, quantity: ingredient.quantity_at_grocery )
    else
        #otherwise, update its quantity to add quantity_at_grocery
        qty = self.user_ingredients.find_by(ingredient: ingredient).quantity
        new_qty = qty + ingredient.quantity_at_grocery
        self.user_ingredients.find_by(ingredient: ingredient).update(quantity: new_qty)
    end

    end

    def marginal_cost_recipes
        return_hash = {}
        Recipe.all.map do |recipe|
            return_hash[recipe] = recipe.marginal_cost(self)
        end
        return_hash
    end

    def pantry
        UserIngredient.all.select do |ui|
            ui.user == self
        end
    end

    def shopping_list
        return_hash = {}
        self.pantry.each do |ui|
            return_hash[ui.ingredient] = (ui.quantity.to_f/ui.ingredient.quantity_at_grocery).ceil
        end
        return_hash
    end

    def total_ingredients_required
        ingredients_needed = {}
        #get the total ingredients needed for all meals
        #want {ingredient, quantity}
        self.meals.each do |meal|
            meal.recipe_ingredients.map do |ri|
            if ingredients_needed[ri.ingredient].nil?
                ingredients_needed[ri.ingredient]= ri.quantity.to_f/ri.recipe.servings
            else 
            new_amount = ingredients_needed[ri.ingredient] + ri.quantity.to_f/ri.recipe.servings
            ingredients_needed[ri.ingredient]= new_amount
            end
        end
    end
        ingredients_needed
    end

    def leftovers
        leftovers = {}

        #get all the user's ingredients
        pantry = self.pantry
        #get all the ingredients needed
        needs = self.total_ingredients_required
        #subtract to see what's left over
        pantry.each do |ui|
            excess = ui.quantity-needs[ui.ingredient]
            leftovers[ui.ingredient] = excess
        end
        #return that hash
        leftovers
    end

end
