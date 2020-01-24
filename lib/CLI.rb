class CommandLineInterface

    def greet 
        puts "   
        
        ,---.     |                   o     |    o              ,---.         |                        
        `---..   .|---.,---.,---.,---..,---.|--- .,---.,---.    |--- .  ,,---.|---.,---.,---.,---.,---.
            ||   ||   |`---.|    |    ||   ||    ||   ||   |    |     >< |    |   |,---||   ||   ||---'
        `---'`---'`---'`---'`---'`    `|---'`---'``---'`   '    `---''  ``---'`   '`---^`   '`---|`---'
                                       |                                                     `---'     
        
                                           "
        
        puts "---------------------------------------------------------------------------------------------"
        puts "Are you looking to subscribe to our services and unable to budget responsibly? Step right in!"
        puts "---------------------------------------------------------------------------------------------"
    end 
    
    
    def name 
        puts "-----------------------"
        puts "Please enter your name:"
        puts "-----------------------"
        ans_name = gets.chomp
        @new_customer = Customer.find_or_create_by(name: ans_name)
    end 
    
    #1, 2, 3, 4 List the four user stories 
    def menu 
        puts "
              1. Subscribe to a service
              2. Find out the total annual cost of your subscriptions
              3. Update your subscription
              4. Unsubscribe"
        
        puts "---------------------------------------------------------------"
        puts "Please select from one of the following options. Enter a number"
        puts "---------------------------------------------------------------"
        input = gets.chomp.to_i
        case input
          when 1
            subscribe 
            menu
          when 2 
            total_cost
            menu
          when 3 
            update 
            menu
          when 4 
            delete
            menu 
        end 
    end 
    
    #1 --- As a user I want to be able to subscribe to a service 
    def subscribe 
        puts "----------------------------------------------------------------------"
        puts "Fancy subscribing to one of the plethora of services we have to offer?"
        puts "----------------------------------------------------------------------"
        services = Service.all.map {|service| service.name}.uniq
        puts services 
        puts "--------------------------------------------------------"
        puts "Please enter the service you would like to subscribe to:"
        puts "--------------------------------------------------------"
        ans_subscribe = gets.chomp
        ans_sub = Service.find_by(name: ans_subscribe)
        puts "---------------------------------------"
        puts "Would you be paying annually? Yes or No"
        puts "---------------------------------------"
        ans_annual = gets.chomp   
        if ans_annual == "Yes" || ans_annual == "yes"
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

    
    #2 --- As a user, I want to find out the annual cost for my subscription(s)
    def total_cost 
        puts "-----------------------------------------------------------------------------------------------------------------------------------"
        puts "Would you like to find out your total annual cost for the services you have subscribed to? This service is provided free of charge!"
        puts "-----------------------------------------------------------------------------------------------------------------------------------"
        ans = gets.chomp 
            if ans == "Yes" || ans == "yes"
                total_sub_cost = 0 
                cust = Customer.find(@new_customer.id)
                annual_subs = cust.subscriptions.select{|s| s.annual == true }
                monthly_subs = cust.subscriptions.select{|s| s.annual == false}
                total_sub_cost += annual_subs.map{ |s| s.service.annual_price}.sum 
                total_sub_cost += monthly_subs.map{ |s| s.service.monthly_price * 12}.sum 
            end 
    puts "------------------------------------------------------------------"
    puts "The total annual cost for your subscriptions is £#{total_sub_cost}"  
    puts "------------------------------------------------------------------"
    end 

        
                
    #3 --- As a user, I want to update my subscription from annual to monthly, or vice versa  
    def update 
        puts "-----------------------------------------------------------------------------------------"
        puts "Would you like to change you subscription payments from monthly to annual, or vice versa?"
        puts "-----------------------------------------------------------------------------------------"
        ans = gets.chomp 
        up_sub = Subscription.find(@new_customer.id)    
        if ans == "Yes" && up_sub.annual == false 
            up_sub.update(annual: true)
        else ans == "Yes" && up_sub.annual == true 
            up_sub.update(annual: false)
        end 
        puts "----------------------------------------"
        puts "Your subscription has been been updated!" 
        puts "----------------------------------------"
    end 
                
                
#4 --- As a user, I want to be able to delete my subscription  
    def delete 
       services = Service.all.map {|service| service.name}.uniq
       puts services 
       puts "------------------------------------------------------------------------"
       puts "Please enter the name of the service you would like to unsubscribe from:"
       puts "------------------------------------------------------------------------"
       ans_delete = gets.chomp 
       ans_delete_service = Service.find_by(name: ans_delete)
       ans_del = Subscription.find_by(customer_id: @new_customer.id, service_id: ans_delete_service.id)
        if ans_del.nil?
           puts "---------------------------------------"
           puts "You are not subscribed to this service!"
           puts "---------------------------------------"
        else 
           ans_del.destroy
           puts "-----------------------------------"
           puts "You have successfully unsubscribed!"
           puts "-----------------------------------"
        end 
    end
end 

        
     


