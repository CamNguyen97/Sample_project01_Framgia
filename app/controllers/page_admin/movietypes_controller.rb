class PageAdmin::MovietypesController < PageAdmin::ApplicationController
  before_action :read_movieType, except: %i(new create index)
  def index
    @movie_type = Movietype.sort_alpha.page(params[Settings.begin_size]).per Settings.size_page
  end

  def new
    @movie_type = Movietype.new
  end

  def create
    @movie_type = Movietype.new movietype_params
    if @movie_type.save
      redirect_to admin_Movietype_path
    else
      render :new
    end
  end

  def edit

  end

  def update

    if @movie_type.update_attributes movietype_params
      redirect_to admin_Movietype_path
    else
      render :edit
    end
  end

  def destroy
    if @movie_type.destroy
      redirect_to admin_Movietype_path
    end
  end

  private

  def movietype_params
    params.require(:movietype).permit :name, :status
  end

  def read_movieType
    @movie_type = Movietype.find_by id: params[:id]
  end
end
