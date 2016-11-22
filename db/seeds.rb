# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars'  { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create({
  company_name: 'Star Wars',
  company_address: 'Lord of the Rings road',
  company_department: 'Heart',
  contact_person: 'Lord Voldermort',
  contact_number: '078493833',
  email: "adafdf@sfdd.com",
  password: "blabla1234"
})
