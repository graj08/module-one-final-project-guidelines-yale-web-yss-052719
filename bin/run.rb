
require_relative '../config/environment'
require_relative '../config/CLI'
require_relative '../db/seed'
#require_relative '../bin/user_interface'

user = login
#binding.pry

areyouHungry(user)

doRecipe(user)

wouldyouliketoAdd(user)

extraOptions(user)

