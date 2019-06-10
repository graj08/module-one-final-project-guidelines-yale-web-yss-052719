class CreateUsers < ActiveRecord::Migration[4.2]
def change
create_table :users do |x|
    x.string :name
end
end


end