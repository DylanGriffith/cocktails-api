require "spec_helper"

describe :cocktails_app do
  describe "/api/ingredients" do
    it "gets all ingredients" do
      get "/api/ingredients"
      expect(json[:data].count).to eq(11)
      expect(json[:data].map { |i| i[:name] }).to include("Vodka")
    end
  end

  describe "/api/cocktails" do
    it "gets cocktails sorted by number of missing ingredients" do
      get "/api/cocktails", :ingredient_ids => [1, 3, 4, 6, 7]

      expect(json[:data][0][:name]).to eq("Mojito")
      expect(json[:data][0][:has_all_ingredients]).to eq(true)

      expect(json[:data][1][:name]).to eq("Strawberry Mojito")
      expect(json[:data][1][:has_all_ingredients]).to eq(false)
      expect(json[:data][1][:missing_ingredients].map { |i| i[:name] }).to match_array(["Strawberry Mix"])

      expect(json[:data][2][:name]).to eq("Fruit Tingle")
      expect(json[:data][2][:has_all_ingredients]).to eq(false)
      expect(json[:data][2][:missing_ingredients].map { |i| i[:name] }).to match_array(["Raspberry Cordial", "Blue Curacao", "Lemonade"])
    end
  end
end
