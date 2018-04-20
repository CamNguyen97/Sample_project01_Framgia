class PageHome::MovieController < PageHome::ApplicationController
  def index
    @movies = Movie.sort_alpha
  end

  def show
  end
end
