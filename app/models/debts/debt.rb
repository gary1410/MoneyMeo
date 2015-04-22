class Debt < ActiveRecord::Base

	def self.types
		['BankLoan', 'CreditCard', 'Mortgage', 'StudenLoan', 'Other']
	end
end

