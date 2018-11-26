
User.create!(name:  "honganh",
               email: "honganh.p256@gmail.com",
               password: "123456",
               password_confirmation: "123456",
               is_admin: true)

User.create!(name:  "toan",
               email: "toanhedspi59@gmail.com",
               password: "123456",
               password_confirmation: "123456",
               is_admin: true)
10.times do |n|
  name  = Faker::Name.name
  email = "user-#{n + 1}@gmail.com"
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

maker = Maker.find(1)
maker.products.create!(name: "LG V30+ LGH930DS Aurora Black", image: "", category: "LG V")
maker = Maker.find(2)
maker.products.create!(name: "Iphone 6 32G", image: "", category: "Iphone")
maker.products.create!(name: "Iphone X 128G White", image: "", category: "Iphone")
maker = Maker.find(3)
maker.products.create!(name: "Samsung Galaxy S9", image: "", category: "Galaxy S")
maker.products.create!(name: "Samsung Galaxy A7 2017", image: "", category: "Galaxy A")
maker.products.create!(name: "Samsung Galaxy J6", image: "", category: "Galaxy J")
maker.products.create!(name: "Samsung Galaxy Note 9", image: "", category: "Galaxy Note")
maker = Maker.find(4)
maker.products.create!(name: "Xiaomi Mi 5", image: "", category: "Mi")
maker.products.create!(name: "Xiaomi Redmi Note 5", image: "", category: "Redmi Note")
maker.products.create!(name: "Xiaomi Mimix 2", image: "", category: "Mimix")




users = User.order(:created_at).take(6)
3.times do
  title = Faker::Lorem.sentence(1)
  banner = ""
  content = Faker::Lorem.paragraph
  users.each {|user| user.reviews.create!(title: title, banner: banner, content: content)}
end

ProductReview.create!(product_id: Product.find(4).id, review_id: Review.find(2).id)
ProductReview.create!(product_id: Product.find(5).id, review_id: Review.find(1).id)
ProductReview.create!(product_id: Product.find(6).id, review_id: Review.find(11).id)
ProductReview.create!(product_id: Product.find(7).id, review_id: Review.find(15).id)
ProductReview.create!(product_id: Product.find(8).id, review_id: Review.find(16).id)
ProductReview.create!(product_id: Product.find(10).id, review_id: Review.find(17).id)
ProductReview.create!(product_id: Product.find(1).id, review_id: Review.find(18).id)
ProductReview.create!(product_id: Product.find(2).id, review_id: Review.find(12).id)
ProductReview.create!(product_id: Product.find(3).id, review_id: Review.find(17).id)
ProductReview.create!(product_id: Product.find(4).id, review_id: Review.find(4).id)
ProductReview.create!(product_id: Product.find(5).id, review_id: Review.find(5).id)
ProductReview.create!(product_id: Product.find(6).id, review_id: Review.find(6).id)
ProductReview.create!(product_id: Product.find(7).id, review_id: Review.find(10).id)
ProductReview.create!(product_id: Product.find(8).id, review_id: Review.find(10).id)
ProductReview.create!(product_id: Product.find(9).id, review_id: Review.find(1).id)
ProductReview.create!(product_id: Product.find(10).id, review_id: Review.find(9).id)
ProductReview.create!(product_id: Product.find(6).id, review_id: Review.find(2).id)
ProductReview.create!(product_id: Product.find(8).id, review_id: Review.find(5).id)
ProductReview.create!(product_id: Product.find(9).id, review_id: Review.find(8).id)
