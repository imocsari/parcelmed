# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars'  { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Courier.destroy_all
Booking.destroy_all

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
  price: 500
})

mad_courier = Courier.create!({
  name: "Mad Delivery :)",
  description: "Unique delivery",
  price: 400
})


Booking.create!(quantity: 5, courier: force_courier, user: vador)


