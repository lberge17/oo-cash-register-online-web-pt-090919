class CashRegister
  attr_accessible :total :cash_register
  
  def cash_register
    @cash_register = self.new
    @total = 0
  end
  
end
