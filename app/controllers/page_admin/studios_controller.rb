class PageAdmin::StudiosController < PageAdmin::ApplicationController
  before_action :read_studio, except: %w(index new create)
  def index
    @studios = Studio.all.order name: :asc
  end

  def new
    @studios = Studio.new
  end

  def create
    @studios = Studio.new studio_params
    if @studios.save
      redirect_to admin_studio_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @studios. update_attributes studio_params
      redirect_to admin_studio_path
    else
      render :edit
    end
  end

  def destroy
    byebug
    @studios.destroy
    redirect_to admin_studio_path
  end

  private

  def studio_params
    params.require(:studio).permit :name, :status
  end

  def read_studio
    @studios = Studio.find_by id: params[:id]
  end
end
