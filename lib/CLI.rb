class CommandLineInterface

    def greet 
        puts "Are you subscribed to many services and unable to budget responsibly? Step right in!"
    end 

    def name 
        puts "Please enter your name:"
        ans_name = gets.chomp
        Customer.find_or_create_by(ans_name)
    end 
    #As a user I want to be able to subscribe to a service 
    def subscribe 
        puts "Fancy subscribing to one of the plethora of services we have to offer?"
        services = Service.all.map {|service| service.name}
        puts services 
        puts "Please enter the service you would like to subscribe to:"
        ans = gets.chomp 

        Subscription.find_or_create_by()
        
    
    end 
end 
        
     


