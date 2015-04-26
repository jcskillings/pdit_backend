class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  #before_filter :authenticate_user!
  respond_to :json
  # GET /users
  # GET /users.json
  def index
    @users = User.all
    #respond_to do | format |
      #format.json { render json: @user }
      #format.html render @user 
    #end
  end

 def userBills
   
 end

  # GET /users/1
  # GET /users/1.json
  def show
    @users = User.find(params[:id])
    respond_to do | format |
      #format.html
      format.json { render json: @user }
      #format.jsonp {
    end
  end
    
 
  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
  
    respond_to do |format|
      if @user.save
        #Rails.logger.debug "userEmail: " + @user.email + " userPhone: " + @user.phone + " userProvider : " + @user.provider
        #Send signup confirmation email
        #UserMailer.welcome_email(@user).deliver
        # Create the client
        #ogger.info "userEmail: " + @user.email + " userPhone: " + @user.phone + " userProvider : " + @user.provider
        
        #easy = SMSEasy::Client.new

        # Deliver a simple message.
        #easy.deliver(@user.phone, @user.provider, "welcome to paidit!" + "https://paidit-kyleschenk1.c9.io")
        
       
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
        #format.json { render json: @user } 
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:login, :username, :email, :first, :last, :phone, :verifiedAcct, :provider, :password)
    end
    
    
end
