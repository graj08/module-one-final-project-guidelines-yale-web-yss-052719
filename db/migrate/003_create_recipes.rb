class CreateRecipes < ActiveRecord::Migration[4.2]

    def change
        create_table :recipes do |x|
            x.string :name
            x.text :process
            x.integer :servings
        end
    end




end