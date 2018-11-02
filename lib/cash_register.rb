class CashRegister
  attr_accessor :discount
  def initialize(d)
    @total = 0
    # @discount
    @total = @total - (discount/100)
  end
end
