
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
Maker.create!(name: "Oppo")

CSV.foreach(File.join(Rails.root, 'db', 'smartphone.csv'), :headers => true,:encoding => 'utf-8',skip_blanks: true) do |row|  
  maker = Maker.where(:name => row[0]).first()
  product = maker.products.create(name: 'test', description: Faker::Lorem.paragraphs, state: true)
  product.update(row.to_hash.slice!('maker'))
end
banners = ['https://www.lg.com/au/images/MC/features/lg-smartphones-banner_V30_G6_Q6_D.jpg','http://dienthoaidailoangiare.com/wp-content/uploads/2016/04/smartphone-banner_updated-1.jpg', 'https://techprolonged.com/wp-content/uploads/2015/10/inewphone-banner.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmN1k7EbzDz9lnst2tkwnoYL6nSuDQkId1lS9-oB15NakmInMQ']
users = User.order(:created_at).take(6)
5.times do
  title = Faker::Lorem.sentence()
  banner = banners.sample
  content = Faker::Lorem.paragraphs
  users.each {|user| user.reviews.create!(title: title, banner: banner, content: content)}
end

Review.all.each do |review|
  i = rand(1..3)
  for j in [1..i] do 
    ProductReview.create!(product_id: Product.all.sample.id, review_id: review.id)
    end
end 

100.times do
  Comment.create!(
    content: Faker::Lorem.paragraph,
    star: rand(0..5),
    user_id: User.all.sample.id,
    review_id: Review.all.sample.id
  )
end