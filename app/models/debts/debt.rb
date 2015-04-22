class Debt < ActiveRecord::Base

	def self.types
		['BankLoan', 'CreditCard', 'Mortgage', 'StudentLoan', 'Other']
	end
end

