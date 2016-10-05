class Ingredient

    TOMATO   = "Tomato"
    DOUGH    = "Dough"
    CHEESE   = "Cheese"
    ANCHOVIS = "Anchovis"
    MOZZARELLA = "Mozzarella"
    PEPPERONI= "Pepperoni"


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
end
