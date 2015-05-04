class Debt < ActiveRecord::Base

	before_save :set_rate

	def self.types
		['BankLoan', 'CreditCard', 'Mortgage', 'StudentLoan', 'Other']
	end

	private

	def set_rate
    raise "wtf"
    p monthly_payment
		self.rate = self.monthly_payment / self.amount
	end
end

