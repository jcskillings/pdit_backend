class PaiditController < ApplicationController
  #before_action :set_bill, only: [:show, :edit, :update, :destroy]
  #before_filter :authenticate_user!
  
  #respond_to :html
  #respond_to :json

    def index
        respond_to do |format|
        format.html { render :index}
        #format.json { render json: @bills }
        end
    end
end
