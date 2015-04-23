class Debt < ActiveRecord::Base

	before_save :set_rate

	def self.types
		['BankLoan', 'CreditCard', 'Mortgage', 'StudentLoan', 'Other']
	end

	private
	
	def set_rate
		self.rate = monthly_payment / amount
	end
end

