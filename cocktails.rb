require "sinatra"
require "json"
require "./models"

class Cocktails < Sinatra::Base
  get '/api/ingredients' do
    ingredients = Ingredient.dataset
    {
      :data => ingredients.map(&:to_hash)
    }.to_json
  end

  get '/api/cocktails' do
    available_ingredient_ids = (params['ingredient_ids'] || [])
    {
      :data => Cocktail.best_for_ingredients(available_ingredient_ids).map do |cocktail|
        cocktail.to_hash
      end
    }.to_json
  end
end
