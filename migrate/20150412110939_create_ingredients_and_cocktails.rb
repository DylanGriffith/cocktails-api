Sequel.migration do
  change do
    create_table(:ingredients) do
      primary_key :id
      String :name, :null => false
      String :type, :null => false, :default => "misc"
      String :image_thumb_uri

      index :name, :unique => true
    end

    create_table(:cocktails) do
      primary_key :id
      String :name, :null => false
      String :image_thumb_uri
      String :description
      String :method
      String :source_uri

      index :name, :unique => false
    end

    create_join_table(:cocktail_id => :cocktails, :ingredient_id => :ingredients)
  end
end
