class PageAdmin::TicketsController < PageAdmin::ApplicationController
  before_action :read_tickets, except: %w(index new create)
  def index
    @tickets = Ticket.all
  end

  def new
    @tickets = Ticket.new
    @list_seat = Seat.all.map{|lst| [lst.seat_type, lst.id]}
    @list_cinemaroom = Cinemaroom.all.map{|lst| [lst.id, lst.id]}
    @list_movies = Movie.all.map{|lst| [lst.name, lst.id]}
  end

  def create
  end

  def edit
    @list_seat = Seat.all.map{|lst| [lst.seat_type, lst.id]}
    @list_cinemaroom = Cinemaroom.all.map{|lst| [lst.id, lst.id]}
    @list_movies = Movie.all.map{|lst| [lst.name, lst.id]}
  end

  def update
  end

  def destroy
  end

  private

  def ticket_params
    params.require(:ticket).permit :pay_ticket,
      :show_time, :status, :seat_id, :movie_id, :cinemaroom_id
  end

  def read_tickets
    @tickets = Ticket.find_by id: params[:id]
  end
end
