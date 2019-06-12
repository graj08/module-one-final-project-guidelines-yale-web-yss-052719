class Meal < ActiveRecord::Base

    belongs_to :user
    belongs_to :recipe
    has_many :recipe_ingredients, through: :recipe

end

    