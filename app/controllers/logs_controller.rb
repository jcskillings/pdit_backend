class LogsController < ApplicationController
  before_action :set_log, only: [:show, :edit, :update, :destroy]

  respond_to :html
  respond_to :json

  def index
    @userName = params[:user_name]
    #@logs = Log.all
    @logs = Log.where(user_name: @userName, hide: [false, nil])
    respond_with(@logs)
  end

  def show
    respond_with(@log)
  end

  def new
    @log = Log.new
    respond_with(@log)
  end

  def edit
  end

  def create
    @log = Log.new(log_params)
    @log.save
    respond_with(@log)
  end

  def update
    @log.update(log_params)
    respond_with(@log)
  end

  def destroy
    @log.update(:hide => true)
    respond_with(@log)
  end

  private
    def set_log
      @log = Log.find(params[:id])
    end

    def log_params
      params.require(:log).permit(:info, :date, :time, :eventType, :user_name, :hide)
    end
end
