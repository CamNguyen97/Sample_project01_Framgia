class PageAdmin::SeatsController < PageAdmin::ApplicationController
  before_action :read_seats, except: %i(index new create)
  def index
    @seats = Seat.joins(:cinemaroom).sort_alpha_seat.page(Settings.begin_size).per Settings.size_page
  end

  def new
    @seats = Seat.new
    @list = Cinemaroom.all.map { |lst| [lst.id, lst.id] }
  end

  def create
    @seats = Seat.new seat_params
    if @seats.save
      redirect_to admin_seats_path
    else
      render :new
    end
  end

  def edit
    @list = Cinemaroom.all.map { |lst| [lst.id, lst.id] }
  end

  def update

    if @seats.save
       redirect_to admin_seats_path
    else
      render :edit
    end
  end

  def destroy

  end

  private

  def seat_params
    params.require(:seat).permit :seat_type, :status, :cinemaroom_id
  end

  def read_seats
    @seats = Seat.find_by id: params[:id]
  end
end
