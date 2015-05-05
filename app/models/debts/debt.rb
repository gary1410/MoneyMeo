class Debt < ActiveRecord::Base

	def self.types
		['BankLoan', 'CreditCard', 'Mortgage', 'StudentLoan', 'Other']
	end

	def self.set_rate
		self.rate = (self.monthly_payment) / (self.amount)
	end


end

