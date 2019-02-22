Atv.destroy_all
User.destroy_all

puts "creating users"

bob_fly = User.create!(
    email: "email1@email.com",
    password: "123456",
    remote_photo_url: "https://pro2-bar-s3-cdn-cf6.myportfolio.com/d48da40e698e7716f036601a19145577/7cab58a066061edfaaeec2d7_rw_1200.jpg?h=24ed8734c6bb08435132bee905423625"
  )

john_glover = User.create!(
    email: "grannycho@email.com",
    password: "123456",
    remote_photo_url: "https://static1.squarespace.com/static/5a9831013917eee07f1fbcc9/5ab2c1be70a6adbbeb0535c8/5ba991adec212d2c72852036/1537839547293/john-glover-photography-headshots-11.jpg?format=500w"
  )

claire_tait = User.create!(
    email: "email3@email.com",
    password: "123456",
    remote_photo_url: "http://www.joyceyung.com/wp-content/uploads/2016/05/SH-Legal-Anna-Chen-1.jpg"
  )

benjamin_newton = User.create!(
    email: "email4@email.com",
    password: "123456",
    remote_photo_url: "https://uwaterloo.ca/scholar/sites/ca.scholar/files/styles/profile_full/public/chaas/files/benjamin_sanchez.jpg?m=1513109507&itok=Jp3lC9W_"
    )

wilma_jackson = User.create!(
    email: "email5@email.com",
    password: "123456",
    remote_photo_url:"https://lyonsfuneralhome.frontrunnerpro.com/runtime/126728//include/site_storage/126728/DeathRecordStub/3660618/converted/center-266x305-5976474.jpg"
  )

puts "done"


puts "creating atvs"

Atv.create!(
      make: "Kawaski",
      model:"Brute Force 750",
      year: "2016",
      price: "300",
      user: bob_fly,
      city: "Montreal",
      remote_photo_url:"https://f-static.motosport.com/motoblog/2014/ATV-Tips-gear.jpg",
      description: "I have kept this quad atv in prestine condition over the years for my grandchild but they aren't interested in quad ATVs."
)

Atv.create!(
      make: "Yamaha",
      model:"Grizzly",
      year: "2013",
      price: "250",
      user: john_glover,
      city: "Montreal",
      remote_photo_url:"https://www.whatsup-chiangmai.com/wp-content/uploads/2017/04/atv-rides.jpg",
      description: "I have kept this quad atv in my garage over the years but I haven't used it since university."
)

Atv.create!(
      make: "Suzuki",
      model:"KingQuad",
      year: "2017",
      price: "285",
      user: claire_tait,
      city: "Montreal",
      remote_photo_url: "http://atvillustrated.com/files/2014.polaris.outlaw90.front-right.blue_.riding.on-dirt.jpg",
      description: "I've stopped using my quad atv because I don't have time for it anymore."
)

Atv.create!(
      make: "Toyota",
      model:"Corolla Bear",
      year: "2019",
      price: "275",
      user: benjamin_newton,
      city: "Montreal",
      remote_photo_url: "http://atvillustrated.com/files/2015.drr_.drx90.black_.front-right.riding.on-track.jpg",
      description: "I've stopped using my quad atv because I don't have time for it anymore."
)

Atv.create!(
      make: "Honda",
      model:"Jetski 450",
      year: "2017",
      price: "205",
      user: wilma_jackson,
      city: "Montreal",
      remote_photo_url:"http://media.nj.com/essex_impact/photo/2015/05/29/ga1025atv-6-kurdzuk-9ccf6173101256d7.jpg",
      description: "My grandson doesn't use this quad atv anymore since he became a new father. It's in good condition."
)
 puts "done atvs"


# User.create!(
#     email: Faker::Internet.email,
#     password: Faker::Internet.password,
#     remote_photo_url: "https://randomuser.me/api/portraits/men/#{number}.jpg"
#   )

# User.create!(
#     email: Faker::Internet.email,
#     password: Faker::Internet.password,
#     remote_photo_url: "https://randomuser.me/api/portraits/men/#{number}.jpg"
#   )
# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# url = "http://media.nj.com/essex_impact/photo/2015/05/29/ga1025atv-6-kurdzuk-9ccf6173101256d7.jpg"
# puts "creating users"
# 10.times do
#   number = rand(40...80)
#   User.create!(
#     email: Faker::Internet.email,
#     password: Faker::Internet.password,
#     remote_photo_url: "https://randomuser.me/api/portraits/men/#{number}.jpg"
#   )
# end
# puts "creating atvs"


# User.all.each do |user|
#   Atv.create!(
#       make: Faker::Vehicle.make,
#       model:Faker::Vehicle.model,
#       year: rand(1995..2019),
#       price: rand(50..200),
#       user: user,
#       city: Faker::Nation.capital_city,
#       remote_photo_url: url,
#       description: "Dolore deserunt consequat quis nulla aute duis ex esse dolore nisi exercitation exercitation mollit anim velit consequat ut eu."
#     )
#   end
