class PageAdmin::SchedulesController < PageAdmin::ApplicationController
  before_action :read_schedule, except: %w(create new index)
  def index
    @schedules = Schedule.order show_case: :asc
  end

  def new
    @schedules = Schedule.new
  end

  def create
    @schedules = Schedule.new schedules_parms
    if @schedules.save
      redirect_to admin_schedules_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @schedules.update_attributes schedules_parms
      redirect_to admin_schedules_path
    else
      render :edit
    end
  end

  private

  def schedules_parms
    params.require(:schedule).permit :show_case, :start_time, :end_time, :date_movie, :status
  end

  def read_schedule
    @schedules = Schedule.find_by id: params[:id]
  end
end
