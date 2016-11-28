# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars'  { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
User.destroy_all
Courier.destroy_all

vador = User.create!({
  company_name: 'Star Wars',
  company_address: 'death star road',
  company_department: 'Vador Department',
  contact_person: 'Mr. Dark',
  contact_number: '078493833',
  email: "iam@dark.com",
  password: "dark1234"
})

force_courier = Courier.create!({
  name: "Parcel Force",
  description: "one of the fastest delivery in UK",
})

mad_courier = Courier.create!({
  name: "Mad Delivery :)",
  description: "Unique delivery",
})


Booking.create!(quantity: 5, courier: force_courier, user: vador)

marken = Courier.new({
  name: "Marken",
  description: "Cold chain transportation",
  tomorrow: true,
  same_day: true,
  vapor_compliant: true,
  ultra_low_compliant: true,
  frozen_40_compliant: true,
  frozen_30_compliant: true,
  frozen_20_compliant: true,
  refrigerated_compliant: true,
  controlled_ambiant_compliant: true,
  uncontrolled_ambiant_compliant: true,
  vapor_price: 15,
  ultra_low_price: 14,
  frozen_40_price: 13,
  frozen_30_price: 12,
  refrigerated_price: 11,
  controlled_ambiant_price: 10,
  uncontrolled_ambiant_price: 0
  })
marken.photo_url = "http://res.cloudinary.com/dvqpald5f/image/upload/c_scale,h_60,w_200/v1480340736/marken.logo_a6vuul.png"
marken.save

ups = Courier.new({
  name: "UPS",
  description: "Cold chain transportation",
  tomorrow: true,
  same_day: true,
  vapor_compliant: false,
  ultra_low_compliant: false,
  frozen_40_compliant: true,
  frozen_30_compliant: true,
  frozen_20_compliant: true,
  refrigerated_compliant: true,
  controlled_ambiant_compliant: true,
  uncontrolled_ambiant_compliant: true,
  vapor_price: 19,
  ultra_low_price: 18,
  frozen_40_price: 17,
  frozen_30_price: 12,
  refrigerated_price: 11,
  controlled_ambiant_price: 10,
  uncontrolled_ambiant_price: 0
  })
ups.photo_url = "http://res.cloudinary.com/dvqpald5f/image/upload/c_scale,h_60,w_200/v1480088822/courier5_kmlek8.jpg"
ups.save


ubs = Courier.new({
  name: "UBS",
  description: "Cold chain transportation",
  tomorrow: true,
  same_day: true,
  vapor_compliant: false,
  ultra_low_compliant: true,
  frozen_40_compliant: false,
  frozen_30_compliant: true,
  frozen_20_compliant: true,
  refrigerated_compliant: true,
  controlled_ambiant_compliant: true,
  uncontrolled_ambiant_compliant: true,
  vapor_price: 20,
  ultra_low_price: 28,
  frozen_40_price: 13,
  frozen_30_price: 15,
  refrigerated_price: 11,
  controlled_ambiant_price: 10,
  uncontrolled_ambiant_price: 0
  })
ubs.photo_url = "http://res.cloudinary.com/dvqpald5f/image/upload/c_scale,h_60,w_200/v1480088726/courier1_wllh8d.png"
ubs.save
