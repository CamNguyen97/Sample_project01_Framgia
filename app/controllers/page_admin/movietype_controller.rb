class PageAdmin::MovietypeController < PageAdmin::ApplicationController
  def index
    @movie_types = Movietype.sort_alpha
  end
end
