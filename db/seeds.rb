# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |n|
  name  = Faker::Name.name
  email = "user-#{n + 1}@google.com"
  password = "password"
  avatar = Faker::Avatar.image
  User.create!(name:  name,
               email: email,
               avatar: avatar,
               password: password,
               password_confirmation: password)
end

Maker.create!(name: "LG")
Maker.create!(name: "Apple")
Maker.create!(name: "Samsung")
Maker.create!(name: "Xiaomi")
Maker.create!(name: "HTC")
Maker.create!(name: "Sony")
Maker.create!(name: "Huawei")

Product.create!(name: "LG V30+ LGH930DS Aurora Black", category: "LG V", maker_id: 0)
Product.create!(name: "Iphone 6 32G", category: "Iphone", maker_id: 1)
Product.create!(name: "Samsung Galaxy S9", category: "LG V", maker_id: 3)

users = User.order(:created_at).take(6)
3.times do
  title = Faker::Lorem.sentence(1)
  banner = "https://www.somersetmedia.co.uk/wp-content/uploads/2017/05/que_movil_comprar.jpg"
  content = Faker::Lorem.paragraph
  users.each {|user| user.reviews.create!(title: title, banner: banner, content: content)}
end