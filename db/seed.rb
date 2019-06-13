User.destroy_all
Meal.destroy_all
Recipe.destroy_all
RecipeIngredient.destroy_all
Ingredient.destroy_all
UserIngredient.destroy_all

# potatoes = Ingredient.create(name: "potatoes",price: 2.00,quantity_at_grocery: 10,measure: "lb")
# curry = Ingredient.create(name: "curry",price: 1.50,quantity_at_grocery: 8,measure: "oz")
# beef = Ingredient.create(name: "beef",price: 5.00,quantity_at_grocery: 10,measure: "lb")

# curryPotatoes = Recipe.create(name: "curryPotatoes", process: "Boil potates then add curry powder", servings: 6)
# curryBeef = Recipe.create(name: "curryBeef", process: "Roast beef then add curry powder", servings: 2)
# curryPotatoesAndBeef = Recipe.create(name: "curryPotatoesAndBeef", process: "Boil potates, roast beef, and then add curry powder", servings: 4)

# RecipeIngredient.create(recipe: curryPotatoes, ingredient: potatoes, quantity: 2)
# RecipeIngredient.create(recipe: curryPotatoes, ingredient: curry, quantity: 3)
# RecipeIngredient.create(recipe: curryBeef, ingredient: curry, quantity: 3)
# RecipeIngredient.create(recipe: curryBeef, ingredient: beef, quantity: 4)
# RecipeIngredient.create(recipe: curryPotatoesAndBeef, ingredient: beef, quantity: 5)
# RecipeIngredient.create(recipe: curryPotatoesAndBeef, ingredient: potatoes, quantity: 2)
# RecipeIngredient.create(recipe: curryPotatoesAndBeef, ingredient: curry, quantity: 1)


###First, stock the pantry with ingredients###
russet_potato = Ingredient.create(name: "russet potato",price: 2.99,quantity_at_grocery: 5,measure: "lb")
yellow_onion = Ingredient.create(name: "yellow onion",price: 2.99,quantity_at_grocery: 3,measure: "lb")
red_onion = Ingredient.create(name: "red onion",price: 2.99,quantity_at_grocery: 3,measure: "lb")
roma_tomato = Ingredient.create(name: "roma tomato",price: 2.99,quantity_at_grocery: 1.5,measure: "lb")
beefsteak_tomato = Ingredient.create(name: "beefsteak tomato",price: 1.00,quantity_at_grocery: 1,measure: "lb")
yukon_potato = Ingredient.create(name: "yukon potato",price: 2.99,quantity_at_grocery: 5,measure: "lb")
garlic = Ingredient.create(name: "garlic",price: 5.00,quantity_at_grocery: 1,measure: "lb")
salt = Ingredient.create(name: "salt",price: 2.99,quantity_at_grocery: 5,measure: "lb")
pepper = Ingredient.create(name: "pepper",price: 2.99,quantity_at_grocery: 1,measure: "lb")
jalapeno = Ingredient.create(name: "jalapeno",price: 4.00,quantity_at_grocery: 1,measure: "lb")
parsley = Ingredient.create(name: "parsley",price: 2.99,quantity_at_grocery: 0.2,measure: "lb")
cilantro = Ingredient.create(name: "cilantro",price: 2.99,quantity_at_grocery: 3,measure: "lb")
lemon = Ingredient.create(name: "lemon",price: 1.00,quantity_at_grocery: 1.0,measure: "each")
lime = Ingredient.create(name: "lime",price: 1.00,quantity_at_grocery: 1.0,measure: "each")
avocado = Ingredient.create(name: "avocado",price: 5.99,quantity_at_grocery: 2,measure: "each")
cayenne_pepper = Ingredient.create(name: "cayenne pepper",price: 2.00,quantity_at_grocery: 3,measure: "oz")
cumin = Ingredient.create(name: "cumin",price: 2.00,quantity_at_grocery: 3,measure: "oz")
egg = Ingredient.create(name: "egg",price: 4.99,quantity_at_grocery: 12,measure: "each")
milk = Ingredient.create(name: "milk",price: 2.99,quantity_at_grocery: 0.5,measure: "gallon")
ginger = Ingredient.create(name: "ginger",price: 4.99,quantity_at_grocery: 1,measure: "lb")
scallion = Ingredient.create(name: "scallions",price: 2.99,quantity_at_grocery: 6,measure: "each")
shallot = Ingredient.create(name: "shallot",price: 1.99,quantity_at_grocery: 3,measure: "each")
bread = Ingredient.create(name: "bread",price: 4.99,quantity_at_grocery: 1,measure: "loaf")
carrot = Ingredient.create(name: "carrot",price: 1.99,quantity_at_grocery: 1,measure: "lb")
pea = Ingredient.create(name: "pea",price: 2.99,quantity_at_grocery: 1,measure: "lb")
rice = Ingredient.create(name: "rice",price: 5.99,quantity_at_grocery: 5,measure: "lb")
flour = Ingredient.create(name: "flour",price: 3.99,quantity_at_grocery: 1,measure: "lb")
bread_flour = Ingredient.create(name: "bread flour",price: 4.99,quantity_at_grocery: 1,measure: "lb")
baking_soda = Ingredient.create(name: "baking soda",price: 4.99,quantity_at_grocery: 0.5,measure: "lb")
baking_powder = Ingredient.create(name: "baking powder",price: 4.99,quantity_at_grocery: 0.5,measure: "lb")
cider_vinegar = Ingredient.create(name: "cider vinegar",price: 4.99,quantity_at_grocery: 1,measure: "lb")
vinegar = Ingredient.create(name: "vinegar",price: 4.99,quantity_at_grocery: 1,measure: "lb")
wine_vinegar = Ingredient.create(name: "wine vinegar",price: 4.99,quantity_at_grocery: 1,measure: "lb")
chicken_leg = Ingredient.create(name: "chicken legs",price: 3.99,quantity_at_grocery: 1,measure: "lb")
chicken_thigh = Ingredient.create(name: "chicken thighs",price: 4.99,quantity_at_grocery: 1,measure: "lb")
chicken_breast = Ingredient.create(name: "chicken breasts",price: 5.99,quantity_at_grocery: 1,measure: "lb")
ribeye = Ingredient.create(name: "ribeye",price: 12.99,quantity_at_grocery: 1,measure: "lb")
pork_chop = Ingredient.create(name: "pork chop",price: 8.99,quantity_at_grocery: 1,measure: "lb")
ground_beef = Ingredient.create(name: "ground beef",price: 4.99,quantity_at_grocery: 1,measure: "lb")
ground_chicken = Ingredient.create(name: "ground chicken",price: 5.99,quantity_at_grocery: 1,measure: "lb")
ground_pork = Ingredient.create(name: "ground pork",price: 5.99,quantity_at_grocery: 1,measure: "lb")
soy = Ingredient.create(name: "soy",price: 4.99,quantity_at_grocery: 1,measure: "lb")
fish_sauce = Ingredient.create(name: "fish sauce",price: 4.99,quantity_at_grocery: 1,measure: "lb")
cheddar = Ingredient.create(name: "cheddar cheese",price: 9.99,quantity_at_grocery: 1,measure: "lb")
parmesan = Ingredient.create(name: "parmesan cheese",price: 10.99,quantity_at_grocery: 1,measure: "lb")
romano = Ingredient.create(name: "romano cheese",price: 11.99,quantity_at_grocery: 1,measure: "lb")
raspberry = Ingredient.create(name: "raspberry",price: 4.99,quantity_at_grocery: 0.75,measure: "lb")
blueberry = Ingredient.create(name: "blueberry",price: 7.99,quantity_at_grocery: 1,measure: "lb")
butter = Ingredient.create(name: "butter",price: 4.99,quantity_at_grocery: 1,measure: "lb")
olive_oil = Ingredient.create(name: "olive_oil",price: 7.99,quantity_at_grocery: 1,measure: "lb")
sugar = Ingredient.create(name: "sugar",price: 7.99,quantity_at_grocery: 1,measure: "lb")
chocolate = Ingredient.create(name: "chocolate",price: 8.99,quantity_at_grocery: 1,measure: "lb")
tortilla = Ingredient.create(name: "tortilla",price: 3.99,quantity_at_grocery: 1,measure: "lb")
yogurt = Ingredient.create(name: "yogurt",price: 4.99,quantity_at_grocery: 1,measure: "lb")
curry_paste = Ingredient.create(name: "curry paste",price: 4.99,quantity_at_grocery: 0.5,measure: "lb")


enchiladas = Recipe.create(name: "enchiladas", process: "Coat large saute pan with oil. Season chicken with salt and pepper. Brown chicken over medium heat, allow 7 minutes each side or until no longer pink. Sprinkle chicken with cumin, garlic powder and Mexican spices before turning. Remove chicken to a platter, allow to cool.
Saute onion and garlic in chicken drippings until tender. Add corn and chiles. Stir well to combine. Add canned tomatoes, saute 1 minute.
Pull chicken breasts apart by hand into shredded strips. Add shredded chicken to saute pan, combine with vegetables. Dust the mixture with flour to help set.
Microwave tortillas on high for 30 seconds. This softens them and makes them more pliable. Coat the bottom of 2 (13 by 9-inch) pans with a ladle of enchilada sauce. Using a large shallow bowl, dip each tortilla in enchilada sauce to lightly coat. Spoon 1/4 cup chicken mixture in each tortilla. Fold over filling, place 8 enchiladas in each pan with seam side down. Top with remaining enchilada sauce and cheese.
Bake for 15 minutes in a preheated 350 degree F oven until cheese melts. Garnish with cilantro, scallion, sour cream and chopped tomatoes before serving. Serve with Spanish rice and beans.
", servings: 4)
greek_yogurt = Recipe.create(name: "greek yogurt", process:"Pour the milk into a slow cooker set to HIGH and close the lid. It will take 2-3 hours before the temperature of the milk is up to 180 degrees F. Check it with an instant-read thermometer. Once it's at 180 degrees, turn off the slow cooker, close the lid, and let the milk cool to 110 degrees F. This will take another 2-3 hours. Once the temperature is between 110 and 115 degrees F, add some of the warm milk to the plain yogurt, stir to combine, and then gently but thoroughly stir the mixture back into the milk in the slow cooker using up and down, left and right motions (not circular). Close the lid.
Wrap the slow cooker with a large bath towel and let it sit undisturbed in a non-drafty place at room temperature or warmer for 10-12 hours or overnight. The milk will have thickened and the whey will have started separating from the milk.
Line a colander with a cheesecloth and pour the yogurt into it. Set the colander over a large glass bowl and let it strain at room temperature for several hours, until you've achieved the desired thickness (length of straining time will also depend on the gauge of the cheesecloth.  I use this cheesecloth - excellent quality and you get a lot of it for a great price) For thick Greek yogurt plan on at least 4 hours. You'll end up with about 8 cups of whey and 7-8 cups of Greek yogurt.
Store the yogurt in the fridge in an airtight container, preferably a glass bowl for up to 2 weeks. When ready to make another batch of yogurt, use a cup of the previous batch as the starter culture.
The whey can be reserved for a variety of purposes (see recipe post for some ideas)." , servings: 4)
soy_chicken = Recipe.create(name: "soy chicken", process: "Combine sugar, soy sauce, water, garlic, and ginger in a large stock pot; stir until sugar is dissolved. Place chicken in stock pot and bring to a boil. Using tongs, turn chicken in pot every 5 minutes.
Boil chicken until no longer pink at the bone and juices run clear, about 35 minutes. An instant-read thermometer inserted near the bone should read 165 degrees F (74 degrees C). Sauce mixture will turn into a rich, brown glaze. Remove pot from heat and let cool 10 minutes.
Place chicken on a platter and sprinkle with chopped green onions.", servings: 4)
soy_pork = Recipe.create(name: "soy pork", process: "Combine sugar, soy sauce, water, garlic, and ginger in a large stock pot; stir until sugar is dissolved. Place chicken in stock pot and bring to a boil. Using tongs, turn chicken in pot every 5 minutes.
Boil pork until no longer pink at the bone and juices run clear, about 35 minutes. An instant-read thermometer inserted near the bone should read 165 degrees F (74 degrees C). Sauce mixture will turn into a rich, brown glaze. Remove pot from heat and let cool 10 minutes.
Place pork on a platter and sprinkle with chopped green onions.", servings: 4)
soy_beef = Recipe.create(name: "soy beef", process: "Combine sugar, soy sauce, water, garlic, and ginger in a large stock pot; stir until sugar is dissolved. Place chicken in stock pot and bring to a boil. Using tongs, turn chicken in pot every 5 minutes.
Boil beef until no longer pink at the bone and juices run clear, about 35 minutes. An instant-read thermometer inserted near the bone should read 165 degrees F (74 degrees C). Sauce mixture will turn into a rich, brown glaze. Remove pot from heat and let cool 10 minutes.
Place beef on a platter and sprinkle with chopped green onions." , servings: 4)
soy_steak = Recipe.create(name: "soy steak", process: "Combine sugar, soy sauce, water, garlic, and ginger in a large stock pot; stir until sugar is dissolved. Place chicken in stock pot and bring to a boil. Using tongs, turn chicken in pot every 5 minutes.
Boil steak until no longer pink at the bone and juices run clear, about 35 minutes. An instant-read thermometer inserted near the bone should read 165 degrees F (74 degrees C). Sauce mixture will turn into a rich, brown glaze. Remove pot from heat and let cool 10 minutes.
Place steak on a platter and sprinkle with chopped green onions." , servings: 4)
cookies = Recipe.create(name: "cookies", process: "Preheat the oven to 325°F (165°C). Grease cookie sheets or line with parchment paper.
Sift together the flour, baking soda and salt; set aside. In a medium bowl, cream together the melted butter, brown sugar and white sugar until well blended.
Beat in the vanilla, egg, and egg yolk until light and creamy. Mix in the sifted ingredients until just blended.
Stir in the chocolate chips by hand using a wooden spoon. Drop cookie dough 1/4 cup at a time (for giant cookies) or a tablespoon at a time (for smaller cookies) onto the prepared cookie sheets. Cookies should be about 3 inches apart.
Bake larger cookies for 15 to 17 minutes, or 10 to 12 minutes for smaller ones (check your cookies before they’re done; depending on your scoop size, your baking time will vary) in the preheated oven, or until the edges are lightly toasted. Cool on baking sheets for a few minutes before transferring to wire racks to cool completely.", servings: 4)
avocado_toast = Recipe.create(name: "avocado toast", process: "In a small bowl, combine avocado, lemon juice, salt, and pepper. Gently mash with the back of a fork.
Top toasted bread with mashed avocado mixture. Drizzle with olive oil and sprinkle over desired toppings." , servings: 4)
thai_curry = Recipe.create(name: "thai curry", process: "To make the curry, warm a large skillet with deep sides over medium heat. Once it’s hot, add the oil. Add the onion and a sprinkle of salt and cook, stirring often, until the onion has softened and is turning translucent, about 5 minutes. Add the ginger and garlic and cook until fragrant, about 30 seconds, while stirring continuously.
Add the bell peppers and carrots. Cook until the bell peppers are fork-tender, 3 to 5 more minutes, stirring occasionally. Then add the curry paste and cook, stirring often, for 2 minutes.
Add the coconut milk, water, kale and sugar, and stir to combine. Bring the mixture to a simmer over medium heat. Reduce heat as necessary to maintain a gentle simmer and cook until the peppers, carrots and kale have softened to your liking, about 5 to 10 minutes, stirring occasionally.
Remove the pot from the heat and season with tamari and rice vinegar. Add salt (I added ¼ teaspoon for optimal flavor), to taste. If the curry needs a little more punch, add ½ teaspoon more tamari, or for more acidity, add ½ teaspoon more rice vinegar. Divide rice and curry into bowls and garnish with chopped cilantro and a sprinkle of red pepper flakes, if you’d like. If you love spicy curries, serve with sriracha or chili garlic sauce on the side.", servings: 4)
indian_curry = Recipe.create(name: "indian curry", process: "Sprinkle the chicken breasts with 2 teaspoons salt.
Heat the oil in a large skillet over high heat; partially cook the chicken in the hot oil in batches until completely browned. Transfer the browned chicken breasts to a plate and set aside.
Reduce the heat under the skillet to medium-high; add the onion, garlic, and ginger to the oil remaining in the skillet and cook and stir until the onion turns translucent, about 8 minutes. Stir the curry powder, cumin, turmeric, coriander, cayenne, and 1 tablespoon of water into the onion mixture; allow to heat together for about 1 minute while stirring. Mix the tomatoes, yogurt, 1 tablespoon chopped cilantro, and 1 teaspoon salt into the mixture. Return the chicken breast to the skillet along with any juices on the plate. Pour 1/2 cup water into the mixture; bring to a boil, turning the chicken to coat with the sauce. Sprinkle the garam masala and 1 tablespoon cilantro over the chicken.
Cover the skillet and simmer until the chicken breasts are no longer pink in the center and the juices run clear, about 20 minutes. An instant-read thermometer inserted into the center should read at least 165 degrees F (74 degrees C). Sprinkle with lemon juice to serve.", servings: 4)
japanese_curry = Recipe.create(name: "japanese curry", process: "Heat olive oil in a pot over medium heat and add garlic
When the garlic is fragrant, add the beef and cook until browned.
Add the potato, carrot, and onion and stir with a wooden spatula.
When the oil has coated evenly on all the ingredients and the outer-edge of the potatoes have become transparent, add the water, honey, and grated apple.
Bring it to boil and then turn the heat down to low to simmer until the potatoes become soft and all the other ingredients are cooked.
Turn the heat off, break the curry sauce blocks apart and add to the pot.", servings: 4)
steak = Recipe.create(name: "steak", process: "Mix 1 tablespoon butter, parsley, garlic and soy sauce.
Sprinkle steak with salt and pepper. In a large skillet, heat remaining butter over medium heat. Add steak; cook until meat reaches desired doneness (for medium-rare, a thermometer should read 135°; medium, 140°; medium-well, 145°), 4-7 minutes per side. Serve with garlic butter.
", servings: 4)
chili = Recipe.create(name: "chili", process: "Place the ground beef in a large pot and throw in the garlic. Cook over medium heat until browned. Drain off the excess fat, and then pour in the tomato sauce, chili powder, cumin, oregano, salt and cayenne. Stir together well, cover, and then reduce the heat to low. Simmer for 1 hour, stirring occasionally. If the mixture becomes overly dry, add 1/2 cup water at a time as needed. 
After an hour, place the masa harina in a small bowl. Add 1/2 cup water and stir together with a fork. Dump the masa mixture into the chili. Stir together well, and then taste and adjust the seasonings. Add more masa paste and/or water to get the chili to your preferred consistency, or to add more corn flavor. Add the beans and simmer for 10 minutes. Serve with shredded Cheddar, chopped onions, tortilla chips and lime wedges.
", servings: 4)
fried_chicken = Recipe.create(name: "fried chicken", process: "Cut the whole chickens into 4 breasts, 4 thighs, 4 legs and 4 wings and set aside.
Preheat your oil, in either a heavy pan on the stove or a deep-fryer, to 325 degrees F.
In a large bowl, combine the flour, salt, black pepper, garlic powder, onion powder and cayenne pepper until thoroughly mixed. Set aside.
Pour the buttermilk into another bowl large enough for the chicken to be immersed in the buttermilk.
Prepare your dredging station. Place your chicken in a bowl. Next to that, your bowl of buttermilk, and next to that, your dry mixture.
Take your breasts, lightly dust them with your flour mixture, then dip them in the buttermilk until they are coated, and then place them in the flour mixture.
Take the breasts that are in the flour mixture and aggressively push the flour mixture into the wet chicken. Make sure that the chicken in very thoroughly coated, or you will not achieve the crust and crunch you are looking for. Gently place the breasts in your hot oil.
Next, repeat the dredging steps with your other pieces of chicken in this order: thigh, leg then wing.
When you place the last wing into the fryer, you should have 16 pieces of chicken in the oil. Set a timer for 15 minutes.
After 15 minutes, take a probe thermometer and check the temperature of a breast. If it reads 180 degrees F, all of your chicken is done. (Keep in mind that it will continue to cook after it has been removed from the fryer.)
Remove the chicken from the oil and let it drain for 5 minutes. Let cool for an additional 10 minutes before serving.
", servings: 4)
chicken_piccata = Recipe.create(name: "chicken piccata", process: "Season chicken with salt and pepper. Dredge chicken in flour and shake off excess.
In a large skillet over medium high heat, melt 2 tablespoons of butter with 3 tablespoons olive oil. When butter and oil start to sizzle, add 2 pieces of chicken and cook for 3 minutes. When chicken is browned, flip and cook other side for 3 minutes. Remove and transfer to plate. Melt 2 more tablespoons butter and add another 2 tablespoons olive oil. When butter and oil start to sizzle, add the other 2 pieces of chicken and brown both sides in same manner. Remove pan from heat and add chicken to the plate.
Into the pan add the lemon juice, stock and capers. Return to stove and bring to boil, scraping up brown bits from the pan for extra flavor. Check for seasoning. Return all the chicken to the pan and simmer for 5 minutes. Remove chicken to platter. Add remaining 2 tablespoons butter to sauce and whisk vigorously. Pour sauce over chicken and garnish with parsley." , servings: 4)
pound_cake = Recipe.create(name: "pound cake", process: "Preheat oven to 350 degrees. Butter and flour a 6-cup (8 1/2-by-4 1/2-inch) loaf pan; set aside.
2. Using an electric mixer on high speed, beat butter and sugar until light and fluffy. Add eggs one at a time, beating well after each addition; add vanilla and salt. With mixer on low, gradually add flour, beating just until combined (do not overmix).
3. Bake until a toothpick inserted in center of cake comes out clean, about 1 hour (tent with aluminum foil if browning too quickly). Let cool in pan 15 minutes. Invert onto a wire rack, and turn upright to cool completely.", servings: 4)
fried_rice = Recipe.create(name: "fried rice", process: "In a 3-quart sized saucepan, rinse uncooked rice with cool water until it runs clear, then drain off excess water.
Add 2 cups of water to the washed rice.
Bring water to a boil and then turn down heat to a simmer and cover with a lid.
Simmer rice for 10 to 12 minutes, or until all of the water is absorbed and rice is tender.
Remove rice from the heat and allow to sit covered for 5 to 10 minutes.
Fluff rice with a fork and allow to cool to room temperature while preparing the other fried rice ingredients.
Heat a wok or large skillet over high heat.
Add 1 tablespoon of vegetable oil, once hot add in the rice.
Stir-fry the rice to evenly coated with oil, then spread and lightly press around the pan.
Allow to cook for 30 seconds, then stir. Repeat the spreading and stirring every 30 seconds for 5 minutes total, to encourage some light browning on the rice.
Make a large well in the center of the pan and add in 2 teaspoons of vegetable oil.
Add onion, garlic, and carrots, stir-fry in the center of the pan for 1 minute, then mix with rice to combine.
Make a large well in the center, add in 1 teaspoon vegetable oil and 1 teaspoon sesame oil.
Pour in whisked eggs, allow to sit for about 30 seconds, then gradually stir to create small scrambled egg pieces, stir to combine with the rice.
Add in soy sauce, stir to combine.
Add peas, stir to combine, and cook until warmed through, about 2 minutes.
Taste rice and season with salt and white pepper as desired.
Garnish rice with green onions, serve immediately.", servings: 4)
omelet = Recipe.create(name: "omelet", process: "BEAT eggs, water, salt and pepper in small bowl until blended.
HEAT butter in 6 to 8-inch nonstick omelet pan or skillet over medium-high heat until hot. TILT pan to coat bottom. POUR IN egg mixture. Mixture should set immediately at edges.
GENTLY PUSH cooked portions from edges toward the center with inverted turner so that uncooked eggs can reach the hot pan surface. CONTINUE cooking, tilting pan and gently moving cooked portions as needed.
When top surface of eggs is thickened and no visible liquid egg remains, PLACE filling on one side of the omelet. FOLD omelet in half with turner. With a quick flip of the wrist, turn pan and INVERT or SLIDE omelet onto plate. SERVE immediately.
", servings: 4)
burger = Recipe.create(name: "burger", process: "Preheat an outdoor grill for high heat and lightly oil grate.
In a medium bowl, whisk together egg, salt and pepper. Place ground beef and bread crumbs into the mixture. With hands or a fork, mix until well blended. Form into 4 patties approximately 3/4 inch thick.
Place patties on the prepared grill. Cover and cook 6 to 8 minutes per side, or to desired doneness.", servings: 4)

enchiladas.add_recipe({tortilla => 6, roma_tomato => 4, chicken_thigh => 5, yellow_onion => 2, garlic => 0.2, salt => 0.05, pepper => 0.05, jalapeno => 0.25})
greek_yogurt.add_recipe({yogurt => 0.5, raspberry => 0.5, chocolate => 0.25, blueberry => 1})
soy_chicken.add_recipe({soy => 0.25, ground_chicken => 1, yellow_onion => 1, roma_tomato => 1})
soy_pork.add_recipe({soy => 0.25, ground_pork => 1, yellow_onion => 1, roma_tomato => 1})
soy_beef.add_recipe({soy => 0.25, ground_beef => 1, yellow_onion => 1, roma_tomato => 1})
soy_steak.add_recipe({soy => 0.25, ribeye => 1, yellow_onion => 1, roma_tomato => 1})
cookies.add_recipe({flour => 1, baking_soda => 0.05, baking_powder => 0.05, chocolate => 0.5, sugar => 0.5, butter => 0.5})
avocado_toast.add_recipe({avocado => 2, bread => 0.25})
thai_curry.add_recipe({curry_paste => 0.25, chicken_breast => 0.5, pea => 0.5, russet_potato => 0.25, rice => 0.5, salt => 0.1, jalapeno => 0.3})
indian_curry.add_recipe({curry_paste => 0.5, chicken_leg => 0.5, yukon_potato => 1, rice => 1, pea => 0.25, salt => 0.1, jalapeno => 0.4 })
japanese_curry.add_recipe({curry_paste => 0.5, pork_chop => 1, rice => 1, pea => 0.25, salt => 0.1, jalapeno => 0.2})
steak.add_recipe({ribeye => 2, salt => 0.1, pepper => 0.1})
chili.add_recipe({roma_tomato => 4, yellow_onion => 2, ground_beef => 1, ground_pork => 2, cumin => 0.5, salt => 0.1, pepper => 0.2, jalapeno => 2})
fried_chicken.add_recipe({chicken_leg => 2, chicken_breast => 2, chicken_thigh => 2, salt => 0.2, pepper => 0.1})
chicken_piccata.add_recipe({chicken_leg => 2, chicken_breast => 2, salt => 0.1, lemon => 1, vinegar => 0.2})
pound_cake.add_recipe({sugar => 1, flour => 1, butter => 1, milk => 0.1, baking_soda => 0.1, baking_powder => 0.1, salt => 0.05})
fried_rice.add_recipe({rice => 1, carrot => 1, pea => 1, yellow_onion => 1, salt => 0.1, pepper => 0.1, jalapeno => 0.1, egg => 2})
omelet.add_recipe({egg => 4, shallot => 1, scallion => 1, salt => 0.1, pepper => 0.2})
burger.add_recipe({ground_beef => 3, bread => 1, cheddar => 1, beefsteak_tomato => 1, red_onion => 1, salt => 0.1, pepper =>0.3})