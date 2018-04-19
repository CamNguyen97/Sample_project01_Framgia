class PageAdmin::SeatsController < PageAdmin::ApplicationController
  def index
    @seats = Seat.joins(:cinemaroom).sort_alpha
  end
end
