class Debt < ActiveRecord::Base

	def self.types
		['BankLoan', 'CreditCard', 'Mortgage', 'StudentLoan', 'Other']
	end

	def set_rate
		self.rate = monthly_payment / amount
	end

end

