class Kitchen

    def initialize(storage)
        @storage = storage
    end

    def order(dish)
        p
        p "KITCHEN: Order received for #{dish.name}"
        p "I am going to need some:"

        dish.ingredients.each do |ingredient|
            p "#{ingredient.amount} - #{ingredient.name}"
        end

        @storage.fetch_ingredient(dish.ingredients)
    end
end
