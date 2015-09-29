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
		if @debt.save
			flash[:success] = "You've saved your information"
			render json: { debt_list: render_to_string( partial: "debts_table", locals: {debts: [@debt]} ) }
		else
			render json: { error: debt.errors.full_messages.join(", ")}, status: :unprocessable_entity
		end
	end

private

	def debt_params
		params.require(:debt).permit(:type, :amount, :monthly_payment, :rate)
	end

end