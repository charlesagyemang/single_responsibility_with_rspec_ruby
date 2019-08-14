class Invoice

	attr_reader :customer, :state, :total

	def initialize(customer, state, total)
		@customer = customer
		@state = state
		@total = total
	end

	def details
		"Customer: #{@customer}, Total: #{@total}"
	end

	def total_cost(tax)
		tax + @total
	end
end
