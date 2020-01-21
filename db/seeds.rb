# Customer.destroy_all
# StreamingService.destroy_all
# Subscription.destroy_all

Customer.create([
    { name: "Michael" },
    { name: "Mark" },
    { name: "Aarav" },
    { name: "Ariya" },
    { name: "Mary" },
    { name: "Amy" },
    { name: "Alex"},
    { name: "Kathy"}
])

StreamingService.create([
    { name: "Netflix", category: "Video"},
    { name: "Amazon Prime", category: "Video"},
    { name: "Spotify", category: "Music" },
    { name: "Youtube Music", category: "Music"},
    { name: "Twitch", category: "Gaming"},
    { name: "Mixer", category: "Gaming"},
    { name: "DAZN", category: "Sports"},
    { name: "ESPN+" category: "Sports"}
])

Subscription.create([
    { customer_id, streaming_service_id }





])