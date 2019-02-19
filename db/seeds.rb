# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User.destroy_all
# Atv.destroy_all
url = "https://cdnmedia.endeavorsuite.com/images/organizations/e3f90816-1af7-4a00-8216-159ccdd86b87/Honda%20ATVs/TriangleCycles_hondaATVSHR.jpg?v=1521831853298"

20.times do
  User.create(
    email: Faker::Internet.email,
    encrypted_password: Faker::Internet.password
    )
end

  20.times do
    Atv.create(
      make: Faker::Vehicle.make,
      model:Faker::Vehicle.model,
      year: rand(1995..2019),
      price: rand(50..200),
      user_id: rand(1..20),
      remote_photo_url: "#{url}"
    )
  end




