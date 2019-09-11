class CashRegister
  attr_accessor :total, :cash_register, :discount, :items, :price
  @@all = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @@all << self
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do 
      @items << item
    end
    @price = price
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
    @@all.each do |id|
      id.items.each do |item|
        if item == @items[-1]
          @total -= id.price
        end
      end
    end
    @items.pop()
  end
  
end
