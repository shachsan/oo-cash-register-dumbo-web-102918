class CashRegister
  def initialize(discount = 0)
    @total = 0
    @total = @total - (discount/100)
  end
end
