class LoansController < ApplicationController
  before_action :set_loan, only: [:show, :edit, :update, :destroy]

  def index
    @loans = Loan.all
  end

  def show
  end

  def new
    @loan = Loan.new
  end

  def create
    @loan = Loan.new(loan_params)
    if @loan.save
      redirect_to loans_path
    else
      redirect_to loans_new_path
    end
  end

  def edit
  end


  def update
    if @loan.update(loan_params) #true
      redirect_to loan_path(@loan)
    else
      redirect_to edit_loan_path(@loan)
    end
  end

  def destroy
    if @loan.destroy
      redirect_to loans_path
    end
  end

  private
  # strong params
  def loan_params
    params.require(:loan).permit(:title, :amount)
  end

  def set_loan
    @loan = Loan.find(params[:id])
  end

end
