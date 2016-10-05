require './waiter.rb'
require './menu.rb'

menu = Menu.new
w = Waiter.new(menu)

w.greet_guest
w.serve_guest
