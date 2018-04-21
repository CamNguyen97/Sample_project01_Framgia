class PageAdmin::UserController < PageAdmin::ApplicationController
  def index
    @users = User.sort_alpha.page(params[Settings.begin_size])
      .per Settings.size_page 
  end
end
