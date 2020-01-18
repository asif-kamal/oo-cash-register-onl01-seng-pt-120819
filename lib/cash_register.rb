require 'pry'
class CashRegister
  
  attr_accessor :discount, :total, :title, :price, :quantity, :items, :last_transaction
  
  
  def initialize(discount = nil)
    @discount = discount
    @total = 0
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @last_transaction = price * quantity
    @total += @last_transaction
    @title = title
    @quantity = quantity
    @quantity.times{@items << title}
     
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
     @items
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
  
end
    