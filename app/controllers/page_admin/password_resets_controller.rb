class PageAdmin::PasswordResetsController < PageAdmin::LoginController
  before_action :get_user, only: [:edit, :update]
  before_action :valid_user, only: [:edit, :update]
  before_action :check_expiration, only: [:edit, :update]

  def new
  end

  def create
    @user = User.find_by email: params[:password_resets][:email].downcase
    if @user
      @user.create_reset_digest
      @user.send_password_reset_email
      flash[:info] = t "send_email"
      redirect_to root_url
    else
      flash.now[:danger] = t "not_email"
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update_attributes user_params
      log_in @user
      @user.update_attribute(:reset_digest, nil)
      flash[:success] = t "reset_pass_success"
      redirect_to root_url
    else
      render :edit                                    
    end
  end

  private

  def user_params
    params.require(:user).permit :password, :password_confirmation
  end

  def get_user
    @user = User.find_by email: params[:email]
    if @user.nil?
      flash[:danger] = t "no_user"
      redirect_to root_url
    end
  end

  def valid_user
    if @user.activated?
      unless (@user && @user.authenticated?(:reset, params[:id]))
        redirect_to root_url
      end
    else
      flash[:danger] = t "not_actived"
    end
  end

  def check_expiration
    if @user.password_reset_expired?
      flash[:danger] = t "reset_pass_expired"
      redirect_to new_password_reset_url
    end
  end
end
