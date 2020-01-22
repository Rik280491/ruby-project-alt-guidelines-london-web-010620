# Customer.destroy_all
# StreamingService.destroy_all
# Subscription.destroy_all



c1 = Customer.find_or_create_by(name: "Michael")
c2 = Customer.find_or_create_by(name: "Mark")
c3 = Customer.find_or_create_by(name: "Aarav")
c4 = Customer.find_or_create_by(name: "Ariya")
c5 = Customer.find_or_create_by(name: "Mary")
c6 = Customer.find_or_create_by(name: "Amy")
c7 = Customer.find_or_create_by(name: "Alex")
c8 = Customer.find_or_create_by(name: "Kathy")
  


videos = Category.find_or_create_by(name: "Videos")
music  = Category.find_or_create_by(name: "Music")
sports = Category.find_or_create_by(name: "Sports")
gaming = Category.find_or_create_by(name: "Gaming")
internet = Category.find_or_create_by(name: "Internet")
energy = Category.find_or_create_by(name: "Energy")
water = Category.find_or_create_by(name: "Water")


netflix = Service.find_or_create_by(name: "Netflix", category_id: videos.id, annual_price: 69.99, monthly_price: 6.99)
amazon_prime = Service.find_or_create_by(name: "Amazon Prime", category_id: videos.id, annual_price: 69.99, monthly_price: 6.99)
spotify = Service.find_or_create_by(name: "Spotify", category_id: music.id, annual_price: 99.99, monthly_price: 9.99)
psplus = Service.find_or_create_by(name: "Playstation Plus", category_id: gaming.id, annual_price: 59.99, monthly_price: 5.99)
xboxlive = Service.find_or_create_by(name: "Xbox Live", category_id: gaming.id, annual_price: 49.99, monthly_price: 4.99)
dazn = Service.find_or_create_by(name: "DAZN", category_id: sports.id, annual_price: 99.99, monthly_price: 9.99)
skysports = Service.find_or_create_by(name: "Sky Sports", category_id: sports.id, annual_price: 149.99, monthly_price: 33.99)
britishgas = Service.find_or_create_by(name: "British Gas", category_id: energy.id, annual_price: 399.99, monthly_price: 39.99 )
ee = Service.find_or_create_by(name: "EE", category_id: internet.id, annual_price: 480.00, monthly_price: 40.00 )
thameswater = Service.find_or_create_by(name: "Thames Water", category_id: water.id, annual_price: 250.00, monthly_price: 20.00)


Subscription.find_or_create_by(customer_id: c1.id, service_id: netflix.id, annual: true)
Subscription.find_or_create_by(customer_id: c1.id, service_id: spotify.id, annual: true)
Subscription.find_or_create_by(customer_id: c2.id, service_id: xboxlive.id, annual: false)
Subscription.find_or_create_by(customer_id: c3.id, service_id: amazon_prime.id, annual: true)
Subscription.find_or_create_by(customer_id: c4.id, service_id: skysports.id, annual: false)
Subscription.find_or_create_by(customer_id: c5.id, service_id: dazn.id, annual: false)
Subscription.find_or_create_by(customer_id: c5.id, service_id: ee.id, annual: false)
Subscription.find_or_create_by(customer_id: c6.id, service_id: thameswater.id, annual: true)
Subscription.find_or_create_by(customer_id: c7.id, service_id: britishgas.id, annual: true)
Subscription.find_or_create_by(customer_id: c8.id, service_id: psplus.id, annual: true)



puts "- SEEDED -"
