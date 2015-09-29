class DebtsController < ApplicationController

	def index
		@debts = Debt.all
	end

	def new
		# session[:user_identifier] = Random Hex
		@debt = Debt.new
		@debts = Debt.all
	end

	def create
		@debt = Debt.new(debt_params)
		@debt.set_rate
		# @debt.user_identifier = session[:user_identifier]
		respond_to do |format|
			if @debt.save
				flash[:success] = "You've saved your information"
				format.html { redirect_to debts_path }
				format.js
			else
				format.html { render :action => "new" }
	      format.js
			end
		end
	end

private

	def debt_params
		params.require(:debt).permit(:type, :amount, :monthly_payment, :rate)
	end

end