require 'rspec'
require './invoice.rb'
require './sales_tax.rb'
require './mailer.rb'

describe 'Invoice' do

	it 'should create an invoice successfully' do 
		invoice = Invoice.new("Charles", "AZ", 1000)
		expect(invoice.get_customer).to eq("Charles")
	end		

	it 'should give details of invoice' do 
		invoice = Invoice.new("Charles", "AZ", 1000)
		expect(invoice).to respond_to(:details)
	end	

	it 'should not have a email_invoice method that sends emails' do 
		invoice = Invoice.new("Charles", "AZ", 1000)
		expect(invoice).not_to respond_to(:email_invoice)
	end	

	it 'should not have a email_invoice method that sends emails' do 
		invoice = Invoice.new("Charles", "AZ", 1000)
		expect(invoice).not_to respond_to(:sales_tax)
	end	


	it 'should return the correct value for state tax successfully' do 
		invoice = Invoice.new("Charles", "AZ", 1000)
		sales_tax = SalesTax.new(invoice.get_state)
		expect(sales_tax.tax).to eq(5.5)
	end

	it 'should return the correct total_cost successfully' do 
		invoice = Invoice.new("Charles", "AZ", 1000)
		sales_tax = SalesTax.new(invoice.get_state)
		total_cost = invoice.total_cost(sales_tax.tax)
		expect(total_cost).to eq(1005.5)
	end

	it 'should send an email successfully with the details of the invoice' do 
		invoice = Invoice.new("Charles", "AZ", 1000)
		email = Mailer.new(invoice.details)
		expect(email).to respond_to(:email_invoice)
	end


end