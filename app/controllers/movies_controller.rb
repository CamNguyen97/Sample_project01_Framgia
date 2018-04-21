class MoviesController < Application2Controller
  before_action :load_movie, only: :show
  def index
    @movies = Movie.search(params[:search], params[:id])
  end

  def show
  end
  private
  def load_movie
    @movie = Movie.find_by id: params[:id]
    @schedule = MovieSchedule.find_by movie_id: @movie
    @time = Schedule.find_by id: @schedule
  end
  def get_movie_id
    params.require(:movie).permit :id
  end
  private
  def movie_params
    params.require(:movie).permit :name, :produce_year
  end
end
