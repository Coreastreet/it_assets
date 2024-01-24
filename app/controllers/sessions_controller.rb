class SessionsController < ApplicationController
  def new
    @new_admin_session = Admin::User.new
    @no_layout = true
  end

  def create
    admin_user = Admin::User.find_by(email: login_params[:email])
    if (admin_user && admin_user.authenticate(login_params[:password]))
      # add is email verified later
      auth_token = JsonWebToken.encode({session_id: admin_user.id})
      cookies[:auth_token] = { value: auth_token }

      redirect_to root_path
    else 
      if admin_user.nil?
          @error_message = "This admin user does not exist."
      else 
          if (admin_user.authenticate(login_params[:password]) == false)    
             @error_message = "Password was incorrect. Please try again."
          else 
             @error_message = "Unknown error. Investigate further"
          end
      end

      @no_layout = true
      flash[:notice] = @error_message
      render 'new'
    end
  end

  def destroy
      cookies.delete(:auth_token)
      @current_admin_user = nil
      redirect_to root_url
  end

  private

  def login_params
      params.require(:session).permit(:email, :password)
  end
end
