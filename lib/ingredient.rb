class Ingredient
  has_many(:step_ingredients)
  has_many(:steps, through: :step_ingredients)
end
