require 'rspec'
require './invoice.rb'

describe 'Invoice' do

	let(:invoice) { Invoice.new("Charles", "AZ", 1000) }

	it 'should create an invoice successfully' do
		expect(invoice.customer).to eq("Charles")
	end

	it 'should return the correct value for state tax successfully' do
		expect(invoice.sales_tax).to eq(5.5)
	end

	it 'should give details of invoice' do
		expect(invoice).to respond_to(:details)
	end

	it 'should have a email_invoice method that sends emails' do
		expect(invoice).to respond_to(:email_invoice)
	end

	it 'should get the total_cost depending on the state' do
		expect(invoice.total_cost(invoice.sales_tax)).to eq(1005.5)
	end


end
