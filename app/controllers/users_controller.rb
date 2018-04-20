class UsersController < LoginController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      @user.send_activation_email
      flash[:info] = t "check_infor"
      redirect_to login_url
    else
      render :new
    end
  end
  
  def show
    @user = User.find_by id: params[:id]
    if !@user.nil?
      redirect_to page_admin_user_path
    else
      flash[:danger] = t "no_users"
      redirect_to root_url
    end
  end

  private

  def user_params
    params.require(:user).permit :name, :password, :password_confirmation,
      :address, :phone, :email
  end
end
