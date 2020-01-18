class CashRegister
  
  attr_accessor :discount, :total, :title, :price, :quantity
  
  @@items = []
  
  def initialize(discount = nil)
    @discount = discount
    @total = 0
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    if @discount != 0
      (@total *= ((100.0 - @discount.to_f)/100)).to_i 
      
      puts "After the discount, the total comes to $#{@total}."
    else
      puts "There is no discount to apply."
    end
  end
  
  def items
    @@items
  end
  
end
    