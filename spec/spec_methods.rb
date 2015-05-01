require "json"
module SpecMethods
  def json
    JSON.parse(last_response.body, :symbolize_names => true)
  end

  def app
    Cocktails
  end
end
