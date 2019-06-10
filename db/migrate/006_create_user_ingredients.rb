class CreateUserIngredients < ActiveRecord::Migration[4.2]

    def change
        create_table :user_ingredients do |x|
            x.integer :user_id
            x.integer :ingredient_id
            x.integer :quantity
        end
    end




end