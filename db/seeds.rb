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


netflix = Service.find_or_create_by(name: "Netflix", category_id: videos.id)
amazon_prime = Service.find_or_create_by(name: "Amazon Prime", category_id: videos.id)
spotify = Service.find_or_create_by(name: "Spotify", category_id: music.id)
psplus = Service.find_or_create_by(name: "Playstation Plus", category_id: gaming.id)
xboxlive = Service.find_or_create_by(name: "Xbox Live", category_id: gaming.id)
dazn = Service.find_or_create_by(name: "DAZN", category_id: sports.id)
skysports = Service.find_or_create_by(name: "Sky Sports", category_id: sports.id)
britishgas = Service.find_or_create_by(name: "British Gas", category_id: energy.id)
ee = Service.find_or_create_by(name: "EE", category_id: internet.id)
thameswater = Service.find_or_create_by(name: "Thames Water", category_id: water.id)


Subscription.find_or_create_by(customer_id: c1.id, service_id: netflix.id)
Subscription.find_or_create_by(customer_id: c1.id, service_id: spotify.id)
Subscription.find_or_create_by(customer_id: c2.id, service_id: xboxlive.id)
Subscription.find_or_create_by(customer_id: c3.id, service_id: amazon_prime.id)
Subscription.find_or_create_by(customer_id: c4.id, service_id: skysports.id)
Subscription.find_or_create_by(customer_id: c5.id, service_id: dazn.id)
Subscription.find_or_create_by(customer_id: c5.id, service_id: ee.id)
Subscription.find_or_create_by(customer_id: c6.id, service_id: thameswater.id)
Subscription.find_or_create_by(customer_id: c7.id, service_id: britishgas.id)
Subscription.find_or_create_by(customer_id: c8.id, service_id: psplus.id)



puts "- SEEDED -"
