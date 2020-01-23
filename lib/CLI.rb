class CommandLineInterface

    def greet 
        puts "Are you looking to subscribe to our services and unable to budget responsibly? Step right in!"
    end 

    
    
     def name 
        puts "Please enter your name:"
        ans_name = gets.chomp
        @new_customer = Customer.find_or_create_by(name: ans_name)
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
        if ans_annual == "Yes" # || "yes"
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
        # def total_cost 
        #     puts "Would you like to find out your total annual cost for the services you have subscribed to. This service is provided free of charge!"
        #     ans = gets.chomp 
        #     if ans == "Yes"
        #         total_sub_cost = 0 
        #         cust = Customer.find(@new_customer.id)
        #         if cust.subscriptions.select{|s| s.annual == true }
        #             total_sub_cost += cust.services.map{ |s| s.annual_price}.sum 
        #             if cust.subscriptions.select{|s| s.annual == false}
        #             total_sub_cost += cust.services.map{ |s| s.monthly_price}.sum 
        #             end 
        #         end 
        #     end  
        # total_sub_cost
        # end         

                
            





            



        #     else 
        #         #move onto next method
        #     end
        # end 

    #3 --- As a user, I want to update my subscription from annual to monthly 
    def update 
        puts "Would you like to change you subscription payments from monthly to annual, or vice versa?"
        ans = gets.chomp 
        up_sub = Subscription.find(@new_customer.id)    
        if ans == "Yes" #&& annual: false 
            up_sub.update(annual: true)
        
        end        
    end 
                
                









    





    






    #4 --- As a user, I want to be able to delete my subscription  
    # def delete 
    #     services = Service.all.map {|service| service.name}.uniq
    #     puts services 
    #     puts "Please enter the name of the service you would like to unsubscribe from:"
    #     ans_delete = gets.chomp
    #     #puts "Are you sure?"
    #     # ans_confirm = gets.chomp
    #         #if ans_confirm == "Yes" 
    #     ans_delete_service = Service.find_by(name: ans_delete)
    #     c_name = Customer.find_by(name: @ans_name)
    #     ans_del = Subscription.find_by(customer_id: c_name.id, service_id: ans_delete_service.id)
    #     ans_del.destroy
    #         #else 
    #             #puts "You will not regret sticking around"
    # end 

end 
        
     


