class DebtsController < ApplicationController

	def index
		@debts = Debt.all
	end

	def new
		@debt = Debt.new
	end

	def create
		@debt = Debt.new(debt_params)
		Debt.set_rate
		if @debt.save
			flash[:success] = "You've saved your information"
			redirect_to new_expense_path
		else
			render :new
		end
	end

private

	def debt_params
		params.require(:debt).permit(:type, :amount, :montly_payment, :rate)
	end

	def set_rate
		self.rate = self.monthly_payment / self.amount
	end

end