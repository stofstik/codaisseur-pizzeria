require './bill.rb'

class Waiter

    def initialize(pizza_menu, pasta_menu, drink_menu, kitchen, storage)
        @pizza_menu = pizza_menu
        @pasta_menu = pasta_menu
        @drink_menu = drink_menu
        @kitchen = kitchen
        @storage = storage

        @bill = Bill.new
        @serving  = true
    end

    def time_greet(hour)
        if hour < 12
            "Good morning"
        elsif hour > 12 && hour < 18
            "Good afternoon"
        else
            "Good evening"
        end
    end

    def greet_guest
        puts
        puts time_greet(Time.new.hour)
        puts
    end

    def order_food(menu)
        menu.contents.each_with_index {|item, index| puts "#{index + 1}. #{item.name}"}
        choice = gets.chomp.to_i
        # Check if choice exists
        if choice > 0 && choice <= menu.contents.length
            dish = menu.contents[choice - 1]
            if @kitchen.order(dish)
                p "Coming up!"
                @bill.add(dish)
            else
                p "Sorry that's all gone"
            end
        else
            puts "Que catso?!"
        end
    end

    def order_drink()
        menu = @drink_menu
        menu.contents.each_with_index {|item, index| puts "#{index + 1}. #{item.name}"}
        choice = gets.chomp.to_i
        if choice > 0 && choice <= menu.contents.length
            drink = menu.contents[choice - 1]
            if @storage.fetch_drink(drink)
                puts "#{drink.name} coming up!"
            else
                puts "Sorry, all out of #{drink.name}"
            end
            @bill.add(drink)
        end
    end

    def ask_menus
        puts "What would you like to order?"
        puts "1. Pizzas"
        puts "2. Pastas"
        puts "3. Drinks"
        case gets.chomp.to_i
        when 1
            order_food(@pizza_menu)
        when 2
            order_food(@pasta_menu)
        when 3
            order_drink()
        else
            puts "Que catso!?"
        end
    end

    def take_order(order_num)
        case order_num
            when 1
                puts "Let me get the menu"
                ask_menus
            when 2
                puts "Thank you! Your bill is € #{@bill.receipt}"
                puts "Goodbye!"
                p
                @serving = false
            else
                puts "Que catso fai?"
        end
    end

    def serving?
        @serving
    end

    def serve_guest
        puts
        puts "1. Would you like to order?"
        puts "2. Would you like to leave?"
        take_order(gets.chomp.to_i)
    end
end
