class SchedulesController < ApplicationController
  def index
  end
  
  def show
    @schedules= MovieSchedule.find_by movie_id: params[:id]
    @movie_name = Movie.find_by id: params[:id]
    @cinemaroom = SchedulesCinemaroom.joins(:schedule, :cinemaroom).where("schedules.id=?",@schedules.schedule_id)
  end
end
