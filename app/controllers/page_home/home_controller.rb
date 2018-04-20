class PageHome::HomeController < PageHome::ApplicationController
  def index
    @movies = Movie.sort_alpha
  end
end
