class PageAdmin::CinemaroomsController < PageAdmin::ApplicationController
  def index
    @cinemarooms = Cinemaroom.sort_alpha
  end
end
