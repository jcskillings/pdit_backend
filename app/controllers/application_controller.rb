class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :null_session
  #protect_from_forgery unless: -> { request.format.json? }
  
  #before_filter :cors_preflight_check
  #after_filter :cors_set_access_control_headers
  before_filter :configure_permitted_parameters, if: :devise_controller?
  after_filter :set_csrf_cookie

  def set_csrf_cookie
    if protect_against_forgery?
      cookies['X-XSRF-TOKEN'] = form_authenticity_token
    end
  end
  # For all responses in this controller, return the CORS access control headers.
=begin
  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = 'https://paidit-jcskillings.c9.io'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, X_XSRF_TOKEN, Content-Type, Accept, Authorization, Session'
    headers['Access-Control-Max-Age'] = "1728000"
  end
  
  # If this is a preflight OPTIONS request, then short-circuit the
  # request, return only the necessary headers and return an empty
  # text/plain.
  
  def cors_preflight_check
    if request.method == :options
      headers['Access-Control-Allow-Origin'] = 'https://paidit-jcskillings.c9.io'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
      headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X_XSRF_TOKEN, X-Prototype-Version'
      headers['Access-Control-Max-Age'] = '1728000'
      render :text => '', :content_type => 'text/plain'
    end
  end
=end  
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation) }
  end
  
  def verified_request?
    super || form_authenticity_token == request.headers['X_XSRF_TOKEN']
  end
end
