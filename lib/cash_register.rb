class CashRegister
  attr_accessor :total, :cash_register, :discount
  
  def cash_register
    @cash_register = self.new
    @total = 0
  end
  
  def cash_register_with_discount(n)
    cash_register
    @discount = 20
  end
  
end
