class NotifTypesController < ApplicationController
  before_action :set_notif_type, only: [:show, :edit, :update, :destroy]

  respond_to :html
  respond_to :json

  def index
    @userName = params[:user_name]
    #@notif_types = NotifType.all
    @notif_types = NotifType.where(user_name: @userName)
    respond_with(@notif_types)
  end

  def show
    respond_with(@notif_type)
  end

  def new
    @notif_type = NotifType.new
    respond_with(@notif_type)
  end

  def edit
  end

  def create
    @notif_type = NotifType.new(notif_type_params)
    respond_to do |format|
      if @notif_type.save
      #respond_with(@notif_type)
      format.html { redirect_to @bill, notice: 'Bill was successfully created.' }
      #format.json { render :show, status: :created, location: @notif_type }
      format.json { render json: @notif_type }
      else 
      format.html { render :new }
      format.json { render json: @notif_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @notif_type.update(notif_type_params)
    respond_with(@notif_type)
  end

  def destroy
    @notif_type.destroy
    respond_with(@notif_type)
  end

  private
    def set_notif_type
      @notif_type = NotifType.find(params[:id])
    end

    def notif_type_params
      params.require(:notif_type).permit(:name, :destination, :notifMethod, :carrier, :verified, :user_name)
    end
end
