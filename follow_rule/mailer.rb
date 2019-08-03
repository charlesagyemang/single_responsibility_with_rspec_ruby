class Mailer
	def initialize(details)
		@details = details
	end

	def email_invoice
		puts "Emailing Invoice..."
		puts @details
	end
end	