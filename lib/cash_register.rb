class CashRegister
  attr_accessor :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @total = @total - (discount/100)
  end
  
end
