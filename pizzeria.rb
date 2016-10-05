require './waiter.rb'
require './menu.rb'
require './drink.rb'
require './kitchen.rb'
require './storage.rb'

pizza_menu = Menu.new
pasta_menu = Menu.new
drink_menu = Menu.new

pizza_menu.contents << Dish.new("Margherita", [
    Ingredient.new(Ingredient::TOMATO, 3),
    Ingredient.new(Ingredient::DOUGH, 0.25),
    Ingredient.new(Ingredient::MOZZARELLA, 0.3)
], 10.0)
pizza_menu.contents << Dish.new("Napoletana", [
    Ingredient.new(Ingredient::TOMATO, 3),
    Ingredient.new(Ingredient::DOUGH, 0.25),
    Ingredient.new(Ingredient::MOZZARELLA, 0.3),
    Ingredient.new(Ingredient::ANCHOVIS, 0.05)
], 11.0)
pizza_menu.contents << Dish.new("Peperoni", [
    Ingredient.new(Ingredient::TOMATO, 3),
    Ingredient.new(Ingredient::DOUGH, 0.25),
    Ingredient.new(Ingredient::MOZZARELLA, 0.3),
    Ingredient.new(Ingredient::PEPPERONI, 0.05)
], 12.0)

pasta_menu.contents << Dish.new("Bolognese", [
    Ingredient.new(Ingredient::TOMATO, 3),
    Ingredient.new(Ingredient::PASTA, 1),
    Ingredient.new(Ingredient::MOZZARELLA, 0.3)
], 13)

drink_menu.contents << Drink.new(Drink::COKE, 1.50, 0)
drink_menu.contents << Drink.new(Drink::SPRITE, 1.50, 0)

storage = Storage.new
kitchen = Kitchen.new(storage)
w = Waiter.new(pizza_menu, pasta_menu, drink_menu, kitchen, storage)

w.greet_guest
while(w.serving?) do
    w.serve_guest
end
