require './storage.rb'

class Kitchen

    def initialize
        @storage = Storage.new
    end

    def order(dish)
        p
        p "KITCHEN: Order received for #{dish.name}"
        p "I am going to need some:"

        dish.ingredients.each do |ingredient|
            p "#{ingredient.amount} - #{ingredient.name}"
        end

        @storage.fetch(dish.ingredients)
    end
end
