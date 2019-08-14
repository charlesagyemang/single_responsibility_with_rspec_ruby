require 'rspec'
require './invoice.rb'
require './sales_tax.rb'
require './mailer.rb'

describe 'Invoice' do

	#GLobal rspec test variables
	let(:invoice)    { Invoice.new("Charles", "AZ", 1000) }
	let(:sales_tax)  { SalesTax.new(invoice.state)        }
	let(:total_cost) { invoice.total_cost(sales_tax.tax)  }
	let(:email)      { Mailer.new(invoice.details)        }

	it 'should create an invoice successfully' do
		expect(invoice.customer).to eq("Charles")
	end

	it 'should give details of invoice' do
		expect(invoice).to respond_to(:details)
	end

	it 'should not have a email_invoice method that sends emails' do
		expect(invoice).not_to respond_to(:email_invoice)
	end

	it 'should not have a email_invoice method that sends emails' do
		expect(invoice).not_to respond_to(:sales_tax)
	end


	it 'should return the correct value for state tax successfully' do
		expect(sales_tax.tax).to eq(5.5)
	end

	it 'should return the correct total_cost successfully' do
		expect(total_cost).to eq(1005.5)
	end

	it 'should send an email successfully with the details of the invoice' do
		expect(email).to respond_to(:email_invoice)
	end


end
