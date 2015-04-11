require "sinatra"
require "json"

class Cocktails < Sinatra::Base
  get '/api/ingredients' do
    {
      :data => [
        {
          :id => 1,
          :name => "Vodka",
          :type => "Spirit",
          :image_thumb => "http://www.petershamliquormart.com.au/images/products/tn_1879.jpg"
        },
        {
          :id => 2,
          :name => "Whiskey",
          :type => "Spirit",
          :image_thumb => "http://pworden.com/wp-content/uploads/2012/10/Dubstep-whiskey-150x150.jpg"
        },
        {
          :id => 3,
          :name => "White Rum",
          :type => "Spirit",
          :image_thumb => "http://quickngourbancellars.com.au/image/cache/data/bacardi_superior_100cl_shadow-150x150.jpg"
        },
        {
          :id => 4,
          :name => "Lime",
          :type => "Misc",
          :image_thumb => "http://shop.newdirections.com.au/WebRoot/Store/Shops/newdirections/502C/D0E0/3C95/FA0C/D188/C0A8/DA15/F81C/lime.jpg"
        },
        {
          :id => 5,
          :name => "Lemon",
          :type => "Misc",
          :image_thumb => "http://fivetastes.com.au/~/media/Images/Brands/FiveTastes/Static%20Content%20Pages/Asian%20Ingredients/Tahitian-Lime-150x150%20jpg.jpg"
        },
        {
          :id => 6,
          :name => "Mint",
          :type => "Misc",
          :image_thumb => "http://coolsmokingonline.co.uk/wp-content/uploads/2014/07/mint-150x150.jpg"
        },
        {
          :id => 7,
          :name => "Soda Water",
          :type => "Mixer",
          :image_thumb => "http://coolspotters.com/files/photos/10981/san-pellegrino-large.jpg?1357529909"
        },
      ]
    }.to_json
  end

  get '/api/cocktails' do
    _available_ingredient_ids = (params['ingredient_ids'] || [])
    {
      :data => [
        {
          :id => 1,
          :name => "Mojito",
          :image_thumb => "http://www.fragrantica.com/images/sastojci/f.300.jpg",
          :ingredients => [
            {
              :id => 3,
              :name => "White Rum",
              :type => "Spirit",
              :image_thumb => "http://quickngourbancellars.com.au/image/cache/data/bacardi_superior_100cl_shadow-150x150.jpg"
            },
            {
              :id => 4,
              :name => "Lime",
              :type => "Misc",
              :image_thumb => "http://shop.newdirections.com.au/WebRoot/Store/Shops/newdirections/502C/D0E0/3C95/FA0C/D188/C0A8/DA15/F81C/lime.jpg"
            },
            {
              :id => 6,
              :name => "Mint",
              :type => "Misc",
              :image_thumb => "http://coolsmokingonline.co.uk/wp-content/uploads/2014/07/mint-150x150.jpg"
            },
            {
              :id => 7,
              :name => "Soda Water",
              :type => "Mixer",
              :image_thumb => "http://coolspotters.com/files/photos/10981/san-pellegrino-large.jpg?1357529909"
            },
          ]
        }
      ]
    }.to_json
  end
end
