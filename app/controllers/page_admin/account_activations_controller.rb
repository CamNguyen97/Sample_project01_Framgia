class PageAdmin::AccountActivationsController < PageAdmin::LoginController
  def new
  end

  def edit
    user = User.find_by email: params[:email]
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.activate
      login_url user
      flash[:success] = t "account_actived"
      redirect_to root_url
    else
      flash[:danger] = t "actived_link"
      redirect_to login_url
    end
  end
end