class PageAdmin::MoviesController < PageAdmin::ApplicationController
  before_action :read_movies, except: %i(new create index)
  def index
    @movies = Movie.joins(:studio).order name: :asc
  end

  def new
    @movies = Movie.new
    @list = Studio.all.map{|lst| [lst.name, lst.id]}
  end

  def create
    @movies = Movie.new movies_params
    if @movies.save
      redict_to admin_movies_path
    else
      render :new
    end
  end

  def edit
    @list = Studio.all.map{|lst| [lst.name, lst.id]}
  end

  def update

    if @movies.update_attributes movies_params
      redirect_to page_admin_movies_path
    else
      render :edit
    end
  end

  def destroy
    if @movie_type.destroy
      redirect_to admin_movies_path
    end
  end

  private

  def movies_params
    params.require(:movie).permit :name, :produce_year, :broadcasing_time, :trailer, :descreption, :studio_id, :status
  end

  def read_movies
    @movies = Movie.find_by id: params[:id]
  end
end
