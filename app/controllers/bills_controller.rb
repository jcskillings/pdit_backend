class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update, :destroy]
  #before_filter :authenticate_user!
  
  respond_to :html
  respond_to :json

  def index
    @userName = params[:user_name]
    
    #bills = Bill.all
    #@user = current_user
    #@bills = Bill.where(user_id: current_user.id)
    
    @bills = Bill.where(user_name: @userName)
    #respond_to do |format|
    #  format.html { render :edit }
    #  format.json { render json: @bills }
    #end
    respond_with(@bills)
  end

  def show
    respond_with(@bill)
  end

  def new
    @bill = Bill.new
    respond_with(@bill)
  end

  def edit
  end

  def create
    @bill = Bill.new(bill_params)

    respond_to do |format|
      if @bill.save
        format.html { redirect_to @bill, notice: 'Bill was successfully created.' }
        #format.json { render :show, status: :created, location: @bill }
        format.json { render json: @bill, status: :created, location: @bill }
      else
        format.html { render :new }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end
  

  def update
     respond_to do |format|
      if @bill.update(bill_params)
        format.html { redirect_to @bill, notice: 'Bill was successfully updated.' }
        format.json { render json: @bill, status: :ok, location: @bill }
      else
        format.html { render :edit }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bill.destroy
    respond_to do |format|
      format.html { redirect_to bills_url, notice: 'Bill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_bill
      @bill = Bill.find(params[:id])
    end

    def bill_params
      params.require(:bill).permit(:name, :category, :paymentType, :loginPage, :dueDate, :repeat, :amountLo, :amountHi, :snoozeDuration, :user_id, :user_name, :reminder1, :reminder2)
    end
    
   
end
