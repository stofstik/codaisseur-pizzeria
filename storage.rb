require './ingredient.rb'

class Storage

    def initialize
        @items = [
            Ingredient.new(Ingredient::TOMATO, 8),
            Ingredient.new(Ingredient::DOUGH, 2),
            Ingredient.new(Ingredient::MOZZARELLA, 1),
            Ingredient.new(Ingredient::PEPPERONI, 0.3),
            Ingredient.new(Ingredient::ANCHOVIS, 1),
        ]
    end

    def fetch(ingredients)
        # check every ingredient
        ingredients.each do |ingredient|
            # check if this ingredient is also in the storage
            storageItem = @items.detect{|item| item.name == ingredient.name}
            if storageItem
                # the ingredient object exists in storage
                # use the ingredient in storage
                storageItem.use(ingredient.amount)
                if storageItem.amount <= 0
                    # not enough of an ingredient
                    return false
                end
            end
        end
    end


end
