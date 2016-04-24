class ApplicationController < ActionController::API
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
