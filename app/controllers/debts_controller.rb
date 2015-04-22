class DebtsController < ApplicationController

	def index
		@debts = Debt.all
	end
	
	def new
		@debt = Debt.new
	end

	def create
		@debt = Debt.new(debt_params)
		if @debt.save
			flash[:success] = "You've saved your information"
			redirect_to expenses_path
		else
			render :new
		end
	end

private

def debt_params
	params.require(:debt).permit(:type, :amount, :montly_payment, :rate)
end



end