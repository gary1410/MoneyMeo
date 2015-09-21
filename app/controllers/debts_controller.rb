class DebtsController < ApplicationController

	def index
		@debts = Debt.all
	end

	def new
		# session[:user_identifier] = Random Hex
		@debt = Debt.new
	end

	def create
		@debt = Debt.new(debt_params)
		@debt.set_rate
		# @debt.user_identifier = session[:user_identifier]
		if @debt.save
			flash[:success] = "You've saved your information"
			redirect_to new_expense_path
		else
			render :new
		end
	end

private

	def debt_params
		params.require(:debt).permit(:type, :amount, :monthly_payment, :rate)
	end

end