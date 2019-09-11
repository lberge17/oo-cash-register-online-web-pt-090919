class CashRegister
  attr_accessor :total, :cash_register, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    if @discount != 0
      @total *= (100 - @discount) / 100
      p "After the discount, the total comes to $#{@total}."
    else 
      p "There is no discount to apply."
    end
  end
  
end
