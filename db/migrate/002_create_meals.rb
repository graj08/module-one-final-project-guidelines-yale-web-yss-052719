class CreateMeals < ActiveRecord::Migration[4.2]

    def change
        create_table :meals do |x|
            x.integer :user_id
            x.integer :recipe_id

        end
    end


end