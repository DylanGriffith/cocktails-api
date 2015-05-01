ENV["COCKTAILS_DB"] = "postgres:///cocktails-test"

require "./cocktails"
require "spec_methods"
require "rack/test"
require "seed"

RSpec.configure do |config|
  config.include SpecMethods

  config.include Rack::Test::Methods

  before(:all) do
    require "seed"
  end

  after(:all) do
    Ingredient.truncate
    Cocktail.truncate
  end
end
