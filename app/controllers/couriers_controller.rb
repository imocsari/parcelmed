class CouriersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @couriers = Courier.get_couriers(query_couriers_params)
    @booking = Booking.new
  end

  #def index
  #  binding.pry
  #  if params[:step] == "1"
  #    # User comes from home, we store the current paramas in instance variables and send them back in the view
  #    @pickup_location = params["pickup_location"]
  #    @destination_location = params["destination_location"]
  #    @temperature = params["temperature"]
  #  elsif params[:step] == "2" # User is in step 2
  #    @couriers = Couriers.get_from_api("ups", query_couriers_params)
  #  end
  #end

 private

 def query_couriers_params
   {
     name: params[:name],
     photo: params[:photo],
     description: params[:description],
     pickup_location: params[:pickup_location],
     destination_location: params[:destination_location],
     temperature: params[:temperature],
     quantity: params[:quantity],
     dimension: params[:dimension],
     weight: params[:weight],
     material_type: params[:material_type],
     data_logger: params[:data_logger],
     data_packaging: params[:data_packaging],
     data_shipping_container: params[:data_shipping_container]
   }
 end
end
