class PageAdmin::UserController < PageAdmin::ApplicationController
  def index
    @users = User.all
  end
end
