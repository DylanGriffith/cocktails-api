class Ingredient < Sequel::Model
  many_to_many :cocktails
end
