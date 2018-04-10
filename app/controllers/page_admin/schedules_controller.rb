class PageAdmin::SchedulesController < PageAdmin::ApplicationController
  def index
    @schedules = Schedule.sort_alpha
  end
end
