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
      puts "After the discount, the total comes to #{@total}."
    else 
      puts "There is no discount to apply."
    end
  end
  
end
