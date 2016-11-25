#  require 'uri'
#  require 'net/http'
#
#  url = URI('https://sandbox-api.postmen.com/v3/rates')
#
#  http = Net::HTTP.new(url.host, url.port)
#  http.use_ssl = true
#
#  request = Net::HTTP::Post.new(url)
#  request['postmen-api-key'] = "d24d4b6f-7161-48a9-98f0-deac2920a191"
#  request['content-type'] = 'application/json'
#  request.body = '{"async":false,"shipper_accounts":[{"id":"7482a897-4996-48b6-9d6c-7e7b8689c57c"}],"is_document":false,"shipment":{"ship_from":{"contact_name":"Elmira Zulauf","company_name":"Kemmer-Gerhold","street1":"662 Flatley Manors","country":"HKG","type":"business"},"ship_to":{"contact_name":"Dr. Moises Corwin","phone":"1-140-225-6410","email":"Giovanna42@yahoo.com","street1":"28292 Daugherty Orchard","city":"Beverly Hills","postal_code":"90209","state":"CA","country":"USA","type":"residential"},"parcels":[{"description":"Food XS","box_type":"custom","weight":{"value":2,"unit":"kg"},"dimension":{"width":20,"height":40,"depth":40,"unit":"cm"},"items":[{"description":"Food Bar","origin_country":"USA","quantity":2,"price":{"amount":3,"currency":"USD"},"weight":{"value":0.6,"unit":"kg"},"sku":"imac2014"}]}]}}'



#  response = http.request(request)
#  puts response.read_body


