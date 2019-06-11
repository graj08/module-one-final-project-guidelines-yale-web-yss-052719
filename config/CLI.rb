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
        User.create(name: userName)
        puts "You have been added to our list of users! Please start our program again to begin use. =)"
    elsif anwser.downcase == "No".downcase
        puts "Thank you for showing interest in our product, sorry that we could not serve you better! =)"
        exit
    else 
        puts "Please enter an anwsery of either 'Yes' or 'No' depending upon whether or not you would like to make an account. =)"
    end
end
else
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

puts "Please select a recipe to add ingredients to your shopping cart."
userRecipeInput = gets.chomp
userRecipe = Recipe.find_by(name: userRecipeInput)



#chooses recipe
#buys ingredients(adds to UI), adds meals(CREATES MEALS), 
#gives list of recipes at lowest marginal cost
##loop until end
##choose recipe
##buys ingredients(adds to UI), adds meals(CREATES MEALS), 
#end
