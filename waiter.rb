class Waiter
    def greet_guest
        p "Welcome! How can I help you"
    end

    def take_order(order_num)

    end

    def serve_guest
        p "How can I help you?"
        p "1. Would you like to order?"
        p "2. Would you like to leave?"
        take_order(get.chomp.to_i)
    end
end
