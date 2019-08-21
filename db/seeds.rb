# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

momo = Recipe.create(
  name: "Momo",
  description: "Momos are a traditional Tibetan dish, so popular that they're considered the region's unofficial national dish. They are steamed or fried dumplings with a minced meat or vegetable filling, and best served piping hot and with a spicy tomato sauce. Because momos are bite-sized, it’s best to make momos to share over conversation with family or a group of friends.",
  cooking_time_minutes: 40,
  directions: "1 - Make dough. 2 - Make filling. 3 - Make sauce."
)
momo.ingredients.create(name: "all-purpose or white wheat flour", amount: "2 cups")
momo.ingredients.create(name: "water", amount: "3/4 to 1 cup")
momo.ingredients.create(name: "salt", amount: "1/2 teaspoon")
momo.ingredients.create(name: "garlic", amount: "1 tablespoon minced")
momo.ingredients.create(name: "cabbage", amount: "1 cup finely chopped")
momo.ingredients.create(name: "cumin powder", amount: "1 teaspoon")

samosa = Recipe.create(
  name: "Samosa",
  description: "A samosa is a common snack in countries such as India, Pakistan, Nepal and Bangladesh. It generally consists of a fried triangular pastry shell containing a savory vegetarian filling made with potato, onion, coriander and green peas. Paneer and meat versions are popular as well.",
  cooking_time_minutes: 70,
  directions: "1 - Make dough. 2 - Make filling. 3 - Fry."
)
samosa.ingredients.create(name: "all-purpose or white wheat flour", amount: "2 cups")
samosa.ingredients.create(name: "oil or ghee", amount: "2 teaspoons")
samosa.ingredients.create(name: "yellow onion", amount: "1/2 cup diced")
samosa.ingredients.create(name: "green chile peppers", amount: "2 minced")
samosa.ingredients.create(name: "turmeric", amount: "1/2 teaspoon")
samosa.ingredients.create(name: "boiled potato", amount: "1 cup, cut into cubes")

gilgeori = Recipe.create(
  name: "Gilgeori Toast",
  description: "Gilgeori Toast is a popular Korean Street food made with eggs and vegetables. Gilgeori Toast means Street Toast and is mostly served for breakfast, the Korean style of grab and go type of breakfast! In a bowl, take the besan, salt, and pepper, slowly add water to get a slightly thick batter.",
  cooking_time_minutes: 30,
  directions: "1 - Chop vegetables. 2 - Prepare Batter. 3 - Mix batter and vegetables. 4 - Fry. 5 - Put between heavenly slices of bread."
)
gilgeori.ingredients.create(name: "chickpea flour", amount: "1 cups")
gilgeori.ingredients.create(name: "salt", amount: "to taste")
gilgeori.ingredients.create(name: "pepper", amount: "to taste")
gilgeori.ingredients.create(name: "onion", amount: "1/4 juliennes")
gilgeori.ingredients.create(name: "cabbage", amount: "1/4 cup grated")
gilgeori.ingredients.create(name: "carrots", amount: "1/4 cup also grated")
