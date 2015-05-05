class ExpensesController < ApplicationController

	def index
		@expenses = Expense.all
	end

	def new
		@expense = Expense.new
	end

	def create
		@expense = Expense.new(expense_params)
			if @expense.save
			flash[:success] = "You've saved your information"
				redirect_to expense_path(@expense)
			else
				render :new
			end
	end

	def show
		@expense = Expense.find(params[:id])
	end


	def edit
		@expense = Expense.find(params[:id])
	end

	def update
		@expense = Expense.find(params[:id])
		if @expense.update(expense_params)
			flash[:success] = "Updated!"
			redirect_to expenses_path
		else
			render :edit
		end
	end

private

	def expense_params
		params.require(:expense).permit(:amount, :expense_type)
	end


end
