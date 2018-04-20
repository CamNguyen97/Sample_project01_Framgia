class PageAdmin::UsersController < PageAdmin::LoginController
  before_action :find_by_id, except: %i(index new create)
  def show
  	if @user.nil?
      flash[:danger] = t "no_user"
      redirect_to root_url
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      @user.send_activation_email
      flash[:info] = t "check_infor"
      redirect_to login_path
    else
      render :new
    end
  end

  private

  def find_by_id
    @user = User.find_by id: params[:id]
  end

  def user_params
	  params.require(:user).permit :name,:password, :password_confirmation, :address, :phone, :email
  end

  def correct_user
    @user = User.find_by id: params[:id]
    redirect_to root_url unless current_user? @user
  end
end
