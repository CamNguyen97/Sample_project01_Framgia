class SchedulesController < ApplicationController
	
  def index
  	@schedules= MovieSchedule.find_by movie_id: 8
  	@cinemaroom = SchedulesCinemaroom.joins(:schedule, :cinemaroom).where("schedules.id=?",@schedules.schedule_id)
  	
  end

  private

  def seat_params
    params.require(:schedule).permit :id
  end

end
