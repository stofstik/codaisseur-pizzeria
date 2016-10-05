require './dish.rb'
require './drink.rb'
require './ingredient.rb'

class Menu
    # put some stuff in the menu
    def initialize
        @menu = []
    end

    # return the menu instance variable
    def contents
        @menu
    end
end
