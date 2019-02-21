# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Atv.destroy_all
User.destroy_all

url = "http://media.nj.com/essex_impact/photo/2015/05/29/ga1025atv-6-kurdzuk-9ccf6173101256d7.jpg"
puts "creating users"
10.times do
  number = rand(40...80)
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    remote_photo_url: "https://randomuser.me/api/portraits/men/#{number}.jpg"
  )
end
puts "creating atvs"


User.all.each do |user|
  Atv.create!(
      make: Faker::Vehicle.make,
      model:Faker::Vehicle.model,
      year: rand(1995..2019),
      price: rand(50..200),
      user: user,
      city: Faker::Nation.capital_city,
      remote_photo_url: url,
      description: ".................."
    )
  end





