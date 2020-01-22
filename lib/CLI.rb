class CommandLineInterface

    def greet 
        puts "Are you looking to subscribe to our services and unable to budget responsibly? Step right in!"
    end 

    
    
     def name 
        puts "Please enter your name:"
        @ans_name = gets.chomp
        @new_customer = Customer.find_or_create_by(name: @ans_name)
     end 
    
    #1, 2, 3, 4 List the four user stories 
    
    #1 --- As a user I want to be able to subscribe to a service 
    def subscribe 
        puts "Fancy subscribing to one of the plethora of services we have to offer?"
        services = Service.all.map {|service| service.name}.uniq
        puts services 
        puts "Please enter the service you would like to subscribe to:"
        ans_subscribe = gets.chomp
        ans_sub = Service.find_by(name: ans_subscribe)
        puts "Would you be paying annually? Yes or No"
        ans_annual = gets.chomp   
        if ans_annual == "Yes"
            @new_subscription = Subscription.find_or_create_by(
                customer_id: @new_customer.id,
                service_id: ans_sub.id,
                annual: true
            )
        else 
            @new_subscription = Subscription.find_or_create_by(
                customer_id: @new_customer.id,
                service_id: ans_sub.id,
                annual: false
            )
        end 
    end 


    #2 --- As a user, I want to find out the monthly and annual cost for my subscription(s)


    #3 --- As a user, I want to update my subscriptions 
    





    






    #4 --- As a user, I want to be able to delete my subscription  
    def delete 
        services = Service.all.map {|service| service.name}.uniq
        puts services 
        puts "Please enter the name of the service you would like to unsubscribe from:"
        ans_delete = gets.chomp 
        ans_delete_service = Service.find_by(name: ans_delete)
        c_name = Customer.find_by(name: @ans_name)
        ans_del = Subscription.find_by(customer_id: c_name.id, service_id: ans_delete_service.id)
        ans_del.destroy
    end 
end 
        
     


