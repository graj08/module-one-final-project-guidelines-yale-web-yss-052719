class CreateIngredients < ActiveRecord::Migration[4.2]

    def change
        create_table :ingredients do |x|
            x.string :name
            x.float :price
            x.float :quantity_at_grocery
            x.string :measure
        end
    end




end