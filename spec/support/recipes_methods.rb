def given_recipe(user)
  @recipe ||= user.recipes.create!(dish_name: "some_dish")
end