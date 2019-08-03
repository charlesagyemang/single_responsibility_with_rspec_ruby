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

	def sales_tax
		case @state
		when 'AZ' then 5.5
		when 'TX' then 3.2
		when 'CA' then 8.7
		end
	end

	def email_invoice
		puts "Emailing Invoice..."
		puts details
	end
end	