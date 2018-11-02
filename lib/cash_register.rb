require 'pry'

class CashRegister
  attr_accessor :discount, :total
  # @@all_items = []
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @@all_items = []
  end

  def add_item(title, price, quantity = 1)
    @@all_items << [title, price]
    @total += price * quantity
  end

  def apply_discount
    if discount!=0
      @total = @total - ((discount/100.0)*@total)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@all_items.map {|item_price_pair|item_price_pair.first}
  end

  def void_last_transaction
    last_trans = @@all_items.last.last
    last_trans
  end

end
