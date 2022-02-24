
class CashRegister

    attr_accessor :total, :discount, :reciept

    def initialize discount = 0
        @total = 0
        @discount = discount
        @reciept = []
    end

    def add_item title, price, qty = 1 
        @total += price * qty
    end

    def apply_discount
        if @discount > 0
            savings = @total * @discount/100
            @total -= savings
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply." 
        end    
    end

    def items
        @reciept.map {|i| i.title}
    end
end