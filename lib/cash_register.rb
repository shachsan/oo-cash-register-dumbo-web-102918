class CashRegister
  def initialize(discount = 0)
    @total = 0
    @total = @total - discount
  end
end
