class Cocktail < Sequel::Model
  many_to_many :ingredients

  def self.best_for_ingredients(ingredient_ids)
    dataset
  end
end
