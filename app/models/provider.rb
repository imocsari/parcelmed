class Provider < ApplicationRecord
  has_many  :couriers

  def self.get_couriers(query_couriers_params)
    distance = compute_distance(query_couriers_params[:puckup], query_couriers_params[:destinqtion])
    couriers = []
    case query_couriers_params[:temperature]
    when "Vapour Phase (-196) LN2"
      # Marken and DPD
      marken = Provider.find_by(name: "Marken")
      marken_courier = Courier.new(provider: marken)
      # marken_courier.price = 10 * marken.price_per_km  # price computation to do
      # marken_courier.price = distance * marken.price_per_km  # price computation to do
      couriers << marken_courier
      dpd = Provider.find_by(name: "DPD")
      dpd_courier = Courier.new(provider: dpd)
      dpd_courier.price = 10 # price computation to do
      couriers << dpd_courier
    when "Ultra Low (-80)"
      # Only :Marken
      marken = Provider.find_by(name: "Marken")
      marken_courier = Courier.new(provider: marken)
      # marken_courier.price = distance * marken.price_per_km  # price computation to do
      couriers << marken_courier
    when "Frozen(-40)"
      # Something
    when "Frozen(-30)"
      # Something
    when "Frozen(-20)"
      # Something
    when "Refigerated (+2-8)"
      # Something
    when "Controlled Ambient(+15, +25)"
      # Something
    when "Uncontrolled Ambient"
      # Something
    end
    couriers
  end

  def compute_distance(pickup_adress, destination_adress)
    # Google Maps Itinerary Call
  end
end
