class SalesTax

	def initialize(state)
		@state = state
	end

	def tax
		case @state
		when 'AZ' then 5.5
		when 'TX' then 3.2
		when 'CA' then 8.7
		end
	end

end	