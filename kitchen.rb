class Kitchen
    def order(dish)
        p "KITCHEN: Order received for #{dish.name}"
        p "I am going to need some:"

        dish.ingredients.each do |ingredient|
            p "#{ingredient.amount} - #{ingredient.name}"
        end
    end
end
