require './dish.rb'
require './ingredient.rb'

class Menu
    # put some stuff in the menu
    def initialize
        @menu = []
        @menu << Dish.new("Margherita", [
            Ingredient.new(Ingredient::TOMATO, 3),
            Ingredient.new(Ingredient::DOUGH, 0.25),
            Ingredient.new(Ingredient::MOZZARELLA, 0.3)
        ], 10.0)
        @menu << Dish.new("Napoletana", [
            Ingredient.new(Ingredient::TOMATO, 3),
            Ingredient.new(Ingredient::DOUGH, 0.25),
            Ingredient.new(Ingredient::MOZZARELLA, 0.3),
            Ingredient.new(Ingredient::ANCHOVIS, 0.05)
        ], 11.0)
        @menu << Dish.new("Peperoni", [
            Ingredient.new(Ingredient::TOMATO, 3),
            Ingredient.new(Ingredient::DOUGH, 0.25),
            Ingredient.new(Ingredient::MOZZARELLA, 0.3),
            Ingredient.new(Ingredient::PEPPERONI, 0.05)
        ], 12.0)
    end

    # return the menu instance variable
    def contents
        @menu
    end
end
