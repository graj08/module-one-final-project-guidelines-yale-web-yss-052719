class User < ActiveRecord::Base

    has_many :meals
    has_many :recipes, through: :meals
    has_many :user_ingredients
    has_many :ingredients, through: :user_ingredients

    def do_recipe(recipe, portion=1)
        (recipe.servings * portion).round.times do
        Meal.create(recipe: recipe, user: self)
        end

    end

    def buy_ingredient(ingredient)
        if !(UserIngredient.all.select do |user_ingredient|
            user_ingredient.user == self && user_ingredient.ingredient == ingredient
        end.empty?)
        UserIngredient.find_by(user: self, ingredient: ingredient).quantity +=1
    else
        UserIngredient.create(user: self, ingredient: ingredient, quantity: 1 )
    end
    end

end
