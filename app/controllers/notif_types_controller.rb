class NotifTypesController < ApplicationController
  before_action :set_notif_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @notif_types = NotifType.all
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
    @notif_type.save
    respond_with(@notif_type)
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
      params.require(:notif_type).permit(:name, :destination, :type, :carrier, :verified)
    end
end
