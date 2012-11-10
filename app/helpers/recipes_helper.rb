module RecipesHelper

  def ingredient_names(ingredients)
    if ingredients
      ingredient_array = ingredients.map {|ing| ing.ingredient_name}
      ingredient_array.join("\n")
    end
  end

  def preperation_steps(preperations)
    if preperations
      preperation_array = preperations.map {|pre| pre.prep_steps}
      preperation_array.join("\n")
   end
  end

  def country_name(country)
    if country
      country_array = country.map {|c| c.country_name}
      country_array.join("\n")
   end
  end


end
