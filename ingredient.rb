class Ingredient

    TOMATO     = "Tomato"
    DOUGH      = "Dough"
    CHEESE     = "Cheese"
    ANCHOVIS   = "Anchovis"
    MOZZARELLA = "Mozzarella"
    PEPPERONI  = "Pepperoni"
    PASTA      = "Pasta"


    def initialize(name, amount)
        @name = name
        @amount = amount
    end

    def name
        @name
    end

    def amount
        @amount
    end

    def use(amount)
        @amount -= amount
        puts "amount is now #{@amount}"
    end

end
