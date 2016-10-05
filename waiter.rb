require './bill.rb'

class Waiter

    def initialize(menu, kitchen)
        @menu = menu
        @kitchen = kitchen

        @bill = Bill.new
        @serving  = true
    end

    def greet_guest
        puts
        puts "############"
        puts "# Welcome! #"
        puts "############"
        puts
    end

    def order_food(choice)
        dish = @menu.contents[choice - 1]
        if @kitchen.order(dish)
            p "Coming up!"
            @bill.add(dish)
        else
            p "Sorry that's all gone"
        end
    end

    def list_menu
        @menu.contents.each_with_index do |dish, i|
            p "#{i + 1}. #{dish.name}"
        end
    end

    def take_order(order_num)
        case order_num
            when 1
                puts "Let me get the menu"
                list_menu
                order_food(gets.chomp.to_i)
            when 2
                puts "Thank you! Your bill is € #{@bill.receipt}"
                puts "Goodbye!"
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
