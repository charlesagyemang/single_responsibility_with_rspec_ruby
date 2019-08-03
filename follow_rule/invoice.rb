class Invoice
	def initialize(customer, state, total)
		@customer = customer
		@state = state
		@total = total
	end

	def get_customer
		@customer
	end

	def get_state
		@state
	end

	def get_total
		@total
	end

	def details
		"Customer: #{@customer}, Total: #{@total}"
	end

	def total_cost(tax)
		tax + @total
	end
end	