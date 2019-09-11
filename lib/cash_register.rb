class CashRegister
  attr_accessible :total :cash_register
  
  def cash_register
    @cash_register = self.new
    @total = 0
  end
  
  def cash_register_with_discount(n)
    @cash_register = self.new
    @total = -n
  end
  
end
