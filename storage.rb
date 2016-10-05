require './ingredient.rb'
require './drink.rb'

class Storage

    def initialize
        @ingredients = [
            Ingredient.new(Ingredient::TOMATO, 8),
            Ingredient.new(Ingredient::PASTA, 3),
            Ingredient.new(Ingredient::DOUGH, 2),
            Ingredient.new(Ingredient::MOZZARELLA, 1),
            Ingredient.new(Ingredient::PEPPERONI, 0.3),
            Ingredient.new(Ingredient::ANCHOVIS, 1),
        ]
        @drinks = [
            Drink.new(Drink::COKE, 1.50, 2),
            Drink.new(Drink::SPRITE, 1.50, 2)
        ]
    end

    def fetch_drink(drink)
        puts "fetching #{drink.name}"
        storageItem = @drinks.detect{|item| item.name == drink.name}
        if storageItem
            if storageItem.amount > 0
                storageItem.use(1)
                puts "#{storageItem.amount} left"
                true
            else
                false
            end
        end
    end

    def fetch_ingredient(ingredients)
        # check every ingredient
        ingredients.each do |ingredient|
            # check if this ingredient is also in the storage
            storageItem = @ingredients.detect{|item| item.name == ingredient.name}
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
