
puts "🌱 Seeding spices..."

puts "Deletes..."
Sneaker.destroy_all
User.destroy_all
Review.destroy_all


puts "Sneakers..."
owjone = Sneaker.create(name: "Off-White Jordan 1 Chicago", brand: "Air Jordan", release_date: 2017, resell_value: 8000.00)
dunkfk = Sneaker.create(name: "Nike Dunk Low Freddy Krueger", brand: "Nike", release_date: 2007, resell_value: 30000.00)
ayeezy2 = Sneaker.create(name: "Nike Air Yeezy 2 Red October", brand: "Nike", release_date: 2014, resell_value: 15000.00)
yeezywave = Sneaker.create(name: "Adidas Yeezy Booost 700 Wave Runner", brand: "Adidas", release_date: 2017, resell_value: 400.00)
dunkgd = Sneaker.create(name: "Nike SB Grateful Dead Green", brand: "Nike", release_date: 2020, resell_value: 850.00)
crocs = Sneaker.create(name: "Crocs Hidden Valley Ranch", brand: "Crocs", release_date: 2021, resell_value: 112.00)
vans = Sneaker.create(name: "Vans Slip On Supreme Skull", brand: "Vans", release_date: 2018, resell_value: 300.00)
airmag = Sneaker.create(name: "Nike Air Mag Back To The Future", brand: "Nike", release_date: 2011, resell_value: 20000.00)
nikequag = Sneaker.create(name: "Nike Dunk SB High Quagmire", brand: "Nike", release_date: 2009, resell_value: 600.00)
airforce = Sneaker.create(name: "Nike Air Force 1 Playstation", brand: "Nike", release_date: 2009, resell_value: 25000.00)

puts "Users..."
hypebeast_one = User.create(user_name: "@yourmomlovesmyshoes2")
hypebeast_two = User.create(user_name: "@ibuyshoesbeforepayingrent")
hypebeast_three = User.create(user_name: "@snkrchick420")
hypebeast_four = User.create(user_name: "@ilovesnkrs1")
hypebeast_five = User.create(user_name: "@hypebeast")


puts "Reviews..."
comment_one = Review.create(comment: "These kicks are wack! \u{1F974} ", rating: 1, sneaker_id: Sneaker.ids.sample, user_id: User.ids.sample)
comment_two = Review.create(comment: "Must cop. \u{1F976} ", rating: 4, sneaker_id: Sneaker.ids.sample, user_id: User.ids.sample)
comment_three = Review.create(comment: "Colorway goes crazy!! \u{1F92F} ", rating: 3.5, sneaker_id: Sneaker.ids.sample, user_id: User.ids.sample)
comment_four = Review.create(comment: "Gotta have deez. \u{1F916} ", rating: 4.5, sneaker_id: Sneaker.ids.sample, user_id: User.ids.sample)
comment_five = Review.create(comment: "Love em!! \u{1F63B} ", rating: 5, sneaker_id: Sneaker.ids.sample, user_id: User.ids.sample)


puts "✅ Done seeding!"
