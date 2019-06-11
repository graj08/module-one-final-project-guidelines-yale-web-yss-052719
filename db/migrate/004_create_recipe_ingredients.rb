class CreateRecipeIngredients < ActiveRecord::Migration[4.2]

    def change
        create_table :recipe_ingredients do |x|
            x.integer :recipe_id
            x.integer :ingredient_id
            x.integer :quantity
        end
    end
    
end