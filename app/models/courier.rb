class Courier < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :provider

  def self.get_from_api(provider, query_params)
  # require 'uri'
  # require 'net/http'
  url = URI('https://sandbox-api.postmen.com/v3/rates')
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  request = Net::HTTP::Post.new(url)
  p request['postmen-api-key'] = ENV["POSTMEN_API_KEY"]
  request['content-type'] = 'application/json'
  request.body = '{
    "async":false,
    "shipper_accounts":[{"id":"' + ENV['POSTMEN_' + provider.upcase + '_SHIPPER_ACCOUNT'] + '"}],
    "is_document":false,
    "shipment":{
      "ship_from":{
        "street1":"' + query_params[:pickup_location] + '",
        "country":"HKG",
        "type":"business"},
      "ship_to":{
        "contact_name":"Dr. Moises Corwin",
        "phone":"1-140-225-6410",
        "email":"Giovanna42@yahoo.com",
        "street1":"28292 Daugherty Orchard",
        "city":"Beverly Hills",
        "postal_code":"90209",
        "state":"CA",
        "country":"USA",
        "type":"residential"},
      "parcels":[{
        "description":"Food XS",
        "box_type":"custom",
        "weight":{"value":2,"unit":"kg"},
        "dimension":{"width":20,"height":40,"depth":40,"unit":"cm"},
        "items":[
          {"description":"Food Bar",
            "origin_country":"USA",
            "quantity":2,
            "price":{"amount":3,"currency":"USD"},
            "weight":{"value":0.6,"unit":"kg"},
            "sku":"imac2014"
          }]
        }]
      }
    }'
    request.body
    response = http.request(request)
    puts response.read_body
    couriers = []
    response["rates"].each do |rate|
      couriers << Courrier.new(price: rate["total_charge"]["amount"], name: rate["service_name"])
    end
    return couriers
  end

end
