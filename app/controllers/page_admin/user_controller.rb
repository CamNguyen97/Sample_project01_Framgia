class PageAdmin::UserController < PageAdmin::ApplicationController
  def index
    @users = User.all.order id: :asc
  end
end
