require './dish.rb'

class Menu
    # put some stuff in the menu
    def initialize
        @menu = []
        @menu << Dish.new("Margherita")
        @menu << Dish.new("Pepperoni")
    end

    # return the menu instance variable
    def contents
        @menu
    end
end
