require 'pry'
class CashRegister
  
  attr_accessor :discount, :total, :title, :price, :quantity
  
  
  def initialize(discount = nil)
    @discount = discount
    @total = 0
    @@items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @title = title
    @quantity = quantity
    @items << 
     
  end
  
  def apply_discount
    if @discount != nil
     @total = (@total * ((100.0 - @discount.to_f)/100)).to_i 
      
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  
  def items
     @quantity.times{@@items << @title}
     @@items

  end
  
end
    