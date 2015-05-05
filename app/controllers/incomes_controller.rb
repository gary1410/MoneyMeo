class IncomesController < ApplicationController

  def new
    @income = Income.new
  end

  def create
    @income = Income.new(income_params)
      if @income.save
        flash[:success] = "You've savied your income info"
        redirect_to income_path(@income)
      else
        render :new
      end
  end

  def show
    @income = Income.find(params[:id])
  end


private

  def income_params
    params.require(:income).permit(:amount)
  end

end
