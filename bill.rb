class Bill
    def initialize
        @items = []
    end
    def add(item)
        @items << item
    end
    def receipt
        t = 0
        @items.each {|i| t += i.price}
        t
    end
end
