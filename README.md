
-- How would you return all the recipes in your database?

all_recipes = Recipe.all

-- How would you return all the comments in your database?

all_comments = Comment.all

-- How would you return the most recent recipe posted in your database?

most_recent = Recipe.last

-- How would you return all the comments of the most recent recipe in your database?

comments_on_most_recent = Comment.where(recipe_id: most_recent.id)

or most_recent.comments

-- How would you return the most recent comment of all your comments?

most_recent_comment = Comment.last

-- How would you return the recipe associated with the most recent comment in your database?

most_recent_comment.recipe.name

-- How would you return all comments that include the string brussels in them?

brussels_recipes = Recipe.where('name LIKE?', '%brussels%')

--

sweet_brussels = Recipe.create(name: "Sweet brussels sprouts", body: "You eat them for dessert.")
raw_brussels = Recipe.create(name: "Raw brussels sprouts", body: "You don't cook them.")
boiled_brussels = Recipe.create(name: "Boiled brussels sprouts", body: "You boil them.")
fried_brussels = Recipe.create(name: "Fried brussels sprouts", body: "You fry them.")
pie = Recipe.create(name: "Cheesy poof pie", body: "You bake the cheesy poofs in a pie.")

Comment.create(body: 'So sweet!', recipe_id: sweet_brussels.id)
Comment.create(body: 'So gross!', recipe_id: sweet_brussels.id)
Comment.create(body: 'I can't eat these.'', recipe_id: raw_brussels.id)
Comment.create(body: 'They are bland.', recipe_id: boiled_brussels.id)
Comment.create(body: 'They are healthy, I guess.', recipe_id: boiled_brussels.id)
Comment.create(body: 'This way is good.', recipe_id: fried_brussels.id)
Comment.create(body: 'They are like french fries.', recipe_id: fried_brussels.id)
Comment.create(body: 'Hmmmmmmm.', recipe_id: pie.id)
