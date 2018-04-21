class SessionsController < LoginController
  def new
  end

  def create
    user = User.find_by email: params[:sessions][:email].downcase
    if user && !user.authenticated?(:remember, params[:sessions][:password])
      if user.activated?
          log_in user
          flash[:danger] = t "success"
          params[:sessions][:remember_me] == Settings.number ? remember(user) : forget(user)
          byebug
          if user.role == Settings.role
            redirect_to page_admin_homes_url
          else
            redirect_to root_url
          end
      else
        message = t "unactived"
        flash[:warning] = message
        redirect_to root_url
      end
    else
      flash[:danger] = t "unvalid"
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end
