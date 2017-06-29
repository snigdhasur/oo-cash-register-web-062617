

class CashRegister

	attr_accessor :total, :discount

def initialize(discount = 0)
	@total = 0
	@discount = discount
end 



def add_item(title, price, quantity = 1)
	@total_saved = quantity * price

	if @array == nil 
		@array = []
		@array << title
	else 
		@array += [title] * quantity
	end 
	@total += (quantity * price) 
	price = @total
end 

def items 
	@array
end 

def apply_discount 
	@total = @total * (1-@discount / 100.0)
	if @discount > 0
		return "After the discount, the total comes to $#{@total.round}."
	else 
		return "There is no discount to apply."
	end 
end 
	

def void_last_transaction
	@total = @total - @total_saved 
end 


 

end 
