class CashRegister
  attr_accessor :total, :cash_register, :discount
  
  def initialize(discount = 0)
    #@cash_register = self.new
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
end
