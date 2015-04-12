require "sequel"

DB = Sequel.connect(ENV["COCKTAILS_DB"] || "postgres:///cocktails-development")

require "./models/cocktail"
require "./models/ingredient"
