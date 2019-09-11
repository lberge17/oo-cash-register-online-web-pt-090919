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
  
  def apply_discount
    if @discount != 0
      @total -= @discount
      p "After the discount, the total comes to #{@total}."
    else 
      p "There is no discount to apply."
    end
  end
  
end
