class Waiter

    def initialize(menu, kitchen)
        @menu = menu
        @kitchen = kitchen
    end

    def greet_guest
        p "Welcome! How can I help you"
    end

    def order_food(choice)
        dish = @menu.contents[choice - 1]
        @kitchen.order(dish)
    end

    def list_menu
        @menu.contents.each_with_index do |dish, i|
            p "#{i + 1}. #{dish.name}"
        end
    end

    def take_order(order_num)
        case order_num
            when 1
                p "Let me get the menu"
                list_menu
                order_food(gets.chomp.to_i)
            when 2
                p "Goodbye!"
            else
                p "Que catso fai?"
        end
    end

    def serve_guest
        p "How can I help you?"
        p "1. Would you like to order?"
        p "2. Would you like to leave?"
        take_order(gets.chomp.to_i)
    end
end
