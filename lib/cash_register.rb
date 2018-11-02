require 'pry'

class CashRegister
  attr_accessor :discount, :total
  def initialize(discount = 0)
    @total = 0
    @discount = discount

  end

  def add_item(title, price, quantity = 1)
    
    @total += price * quantity
  end

  def apply_discount
    if discount
      @total = @total - ((discount/100.0)*@total)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items

  end

end
