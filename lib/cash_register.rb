class CashRegister
  attr_accessor :total, :cash_register, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @items << item
  end
  
  def apply_discount
    if @discount != 0
      @total -= (@total * 20) / 100 
      p "After the discount, the total comes to $#{@total}."
    else 
      p "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -=
        @items.pop()
  end
  
end
