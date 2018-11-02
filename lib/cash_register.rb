class CashRegister
  attr_accessor :discount, :total
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @total = @total - (discount/100)
  end

  def add_item(item)
    

end
