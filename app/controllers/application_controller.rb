class ApplicationController < ActionController::API
  after_filter :cors_headers

  def cors_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end
  # Verify that auth token is valid
  def verify_user
    @user = User.find_by_auth_token(params[:auth_token])
    head(403) unless @user
  end

  # Verify that user is an admin
  def verify_admin_user
    @user = User.find_by_auth_token(params[:auth_token])
    head(403) if @user.nil? || !@user.is_admin?
  end
end
