class CashRegister
  attr_accessor :total, :cash_register, :discount
  
  def initialize
    #@cash_register = self.new
    @total = 0
  end
  
  def cash_register_with_discount(n)
    @cash_register = self.new
    @total = 0
    @discount = 20
  end
  
end
