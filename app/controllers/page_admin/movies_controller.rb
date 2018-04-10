class PageAdmin::MoviesController < PageAdmin::ApplicationController
  def index
    @movies = Movie.joins(:studio).sort_alpha
  end
end
