class Drink

    COKE   = "Coke"
    SPRITE = "Sprite"

    def initialize(name, price, amount)
        @name = name
        @price = price
        @amount = amount
    end

    def name
        @name
    end

    def price
        @price
    end

    def amount
        @amount
    end

    def use(amount)
        @amount -= amount
    end

end
