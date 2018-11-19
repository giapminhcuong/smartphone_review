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
maker.products.create!(name: "LG V30+ LGH930DS Aurora Black", image: "https://www.lg.com/au/images/smartphones/md05878255/gallery/LG%20V30-large01.jpg", category: "LG V")
maker = Maker.find(2)
maker.products.create!(name: "Iphone 6 32G", image: "https://cdn1.vienthonga.vn/image/2017/3/4/100000_iphone-6-8.jpg", category: "Iphone")
maker.products.create!(name: "Iphone X 128G White", image: "https://staticshop.o2.co.uk/product/images/iphone-x-space-grey-sku-header.png?cb=25dc5afb0412fc40a28aa29d82cb53d0", category: "Iphone")
maker = Maker.find(3)
maker.products.create!(name: "Samsung Galaxy S9", image: "https://www.t-mobile.com/content/dam/t-mobile/en-p/cell-phones/samsung/samsung-galaxy-s9/lilac-purple/Samsung-Galaxy-S9-Lilac-Purple-1-3x.jpg", category: "Galaxy S")
maker.products.create!(name: "Samsung Galaxy A7 2017", image: "https://images.samsung.com/is/image/samsung/in-galaxy-a7-2017-sm-a720f-sm-a720fzddins-frontgold-thumb-61508130", category: "Galaxy A")
maker.products.create!(name: "Samsung Galaxy J6", image: "https://i.gadgets360cdn.com/products/large/1526892165_635_Samsung_Galaxy_J6.jpg", category: "Galaxy J")
maker.products.create!(name: "Samsung Galaxy Note 9", image: "https://image.samsung.com/vn/smartphones/galaxy-note9/images/galaxy-note9_overview_kv_type1_l.png", category: "Galaxy Note")
maker = Maker.find(4)
maker.products.create!(name: "Xiaomi Mi 5", image: "https://static.digit.in/product/c9685a25b85110a756e4f9a87878543f6f8959fe.jpeg", category: "Mi")
maker.products.create!(name: "Xiaomi Redmi Note 5", image: "https://cdn.tgdd.vn/Products/Images/42/153953/xiaomi-redmi-note-5-pro-400x460.png", category: "Redmi Note")
maker.products.create!(name: "Xiaomi Mimix 2", image: "http://imgs.vietnamnet.vn/Images/2017/07/07/18/20170707181520-mi-mix-2-render-2.jpg", category: "Mimix")




users = User.order(:created_at).take(6)
3.times do
  title = Faker::Lorem.sentence(1)
  banner = "http://dienthoaidailoangiare.com/wp-content/uploads/2016/04/smartphone-banner_updated-1.jpg"
  content = Faker::Lorem.paragraph
  users.each {|user| user.reviews.create!(title: title, banner: banner, content: content)}
end

ProductReview.create!(product_id: Product.find(1).id, review_id: Review.find(1).id)
ProductReview.create!(product_id: Product.find(2).id, review_id: Review.find(2).id)
ProductReview.create!(product_id: Product.find(3).id, review_id: Review.find(3).id)
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
