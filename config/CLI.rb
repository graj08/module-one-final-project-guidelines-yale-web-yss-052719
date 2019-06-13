#def login
    puts "Hello, may I ask what your name is?"
    userName = gets.chomp
    activeUser = User.find_by name: userName
    #binding.pry
    anwser = ""
    if activeUser == nil
        puts "Sorry, but we do not have you in our system of Users, would you like to make an account?"
    until anwser.downcase == "Yes".downcase || anwser.downcase == "No".downcase do
        anwser = gets.chomp
        if anwser.downcase == "Yes".downcase
            activeUser = User.create(name: userName)
            puts "You have been added to our list of users! =)"
        elsif anwser.downcase == "No".downcase
            puts "Thank you for showing interest in our product, sorry that we could not serve you better! =)"
            exit
        else 
            puts "Please enter an anwsery of either 'Yes' or 'No' depending upon whether or not you would like to make an account. =)"
        end
    end

#
#



#def areyouHungry(activeUser)
    puts "Hello #{activeUser.name}, what are you feeling hungry for this week?"
    userHunger = gets.chomp
        x = Recipe.all.select do |recipe|
            #binding.pry
        recipe.name.downcase == userHunger.downcase || recipe.recipe_ingredients.map  {|x| x.ingredient}.map {|x| x.name}.any? {|x| x == userHunger}
        end 
        if x.empty?
            puts "We couldn't find anything based on what you entered, here are some options that other users have liked"
            y = []
            until y.length == 5 do
            y << Recipe.all[rand(Recipe.all.length)].name
            y.uniq
            end
            y.each { |x| puts x }
        else
        puts "Here are a list of recipes that might interest you!"
        x.each do |x|
        puts x.name
        end
        end
    end
#end

#def doRecipe(activeUser)
    puts "Please select a recipe to add ingredients to your shopping cart."
    userRecipeInput = gets.chomp
    userRecipe = Recipe.find_by(name: userRecipeInput)

    until userRecipe != nil do
        if userRecipe == nil 
            puts "Sorry, but we can't seem to find that recipe, please try again"
            userRecipeInput = gets.chomp
            userRecipe = Recipe.find_by(name: userRecipeInput)
        end
    end

    puts "Ok, we are adding #{userRecipe.name} to your recipe list now. How many portions of that recipe would you like to make?"
    userInput = gets.chomp.to_f
    until userInput.class == Float || userInput.class == Integer
        puts "Please enter a number to specify the amount of portions of this recipe that you would like to make"
        userInput = gets.chomp.to_f
    end
    portions = userInput
    activeUser.do_recipe(userRecipe, portions)
    puts "All of the neccessary ingredients have been added to your shopping list. Here are a list of recipes you can make at the lowest marginal cost given the ingredients that you already have."
    activeUser.marginal_cost_recipes.each do |recipe, cost|
        puts"#{recipe.name}" + ", " + "#{cost}"
    end
#end

#def wouldyouliketoAdd(activeUser)
    until userInput == "No".downcase do
    puts "Would you like to add any of these recipes to your current  meal list?"
    userInput = gets.chomp 
    if userInput.downcase == "Yes".downcase
        puts "Which of these recipes would you like to add?"
        userInput2 = gets.chomp
        until userRecipe != nil do
            if userRecipe == nil 
                puts "Sorry, but we can't seem to find that recipe, please try again"
                userRecipeInput = gets.chomp
                userRecipe = Recipe.find_by(name: userRecipeInput)
            end
        end
        puts "Ok, we are adding #{userRecipe.name} to your recipe list now. How many portions of that recipe would you like to make?"
        userInput = gets.chomp.to_f
        until userInput.class == Float || userInput.class == Integer
        puts "Please enter a number to specify the amount of portions of this recipe that you would like to make"
        userInput = gets.chomp.to_f
        end
        portions = userInput
        activeUser.do_recipe(userRecipe, portions)
        puts "All of the necceessary ingredients have been added to your shopping list. Here are a list of recipes you can make at the lowest marginal cost given the ingredients that you already have."
        activeUser.marginal_cost_recipes.each do |recipe, cost|
        puts"#{recipe.name}" + ", " + "#{cost}"
    end
    elsif userInput.downcase == "No".downcase
        break
    else 
        puts "Please choose an anwser of either 'Yes' or 'No' to continue."
    end
    end
#end

#def extraOptions(activeUser)
    userInput2  = ""
    until userInput2.downcase == "Done".downcase
    puts "Is there anything else that you would like to do?"
    puts "Options: Create another recipe, View leftovers, View shopping list, View pantry, buy groceries."
    puts "If you are done using our application, please type 'Done' and press enter"
    userInput2 = gets.chomp 
    if userInput2.downcase == "Create another recipe".downcase
     puts "Please enter a recipe with the following fields in the demonstrated format in order to add a recipe to our database: #{"RecipeName"}, #{"Instructions"}, Servings(As a number), 'ingredient', 'ingredient', 'ingredient'..."
     userInput3 = gets.chomp.split(",")
    Recipe.create(name: userInput3[0], process: userInput3[1], servings: userInput3[2])
    x2 = Recipe.find_by(name: userInput3[0], process: userInput3[1], servings: userInput3[2])
    userInput3[3..999].each { |x| Ingredient.create(name: x)}
    userInput3[3..999].each { |x| RecipeIngredient.create(ingredient: Ingredient.find_by(name: x),recipe: x2) } 
    puts "Ok. Your recipe has been added!"
     elsif userInput2.downcase == "View leftovers".downcase
        activeUser.leftovers.each do |x|
            puts "#{x.name}, #{x.quantity_at_grocery}"
        end

     elsif userInput2.downcase == "View Shopping List".downcase
        activeUser.leftovers.each do |x|
            puts "#{x.name}, #{x.quantity_at_grocery}"
        end
     elsif userInput2.downcase == "Buy Groceries".downcase 
      puts "What ingredients would you like to add to your pantry? Please enter in the following format: 'ingredient', 'ingredient', 'ingredient'..."
      userInput4 = gets.chomp.split(",")
      userInput4.each { |x| activeUser.buy_ingredient(Ingredient.find_or_create_by(name: x))}
      puts "The Ingredients have been added into your pantry!"
     else 
      puts "Please select one of the following options: 'Create another recipe', 'View leftovers', 'Buy Groceries'. If you are done using our application, please type 'done' and press enter"
    end
    end
#end  
  


