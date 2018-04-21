class BookingTicketsController < ApplicationController
  def index
  end

  def new
    @bookings = Ticket.new
  end

  def create
    @users= User.find_by id: params[:id]
	  @boookings = BookingTicket.new bookings_params
    if @boookings.save
      redict_to booking_path
    else
      render :new
    end
  end

  def show
    @movie= Movie.find_by id: params[:id]
    @schedule= MovieSchedule.find_by movie_id: @movie
    @date_movie= Schedule.find_by id: @schedule
    @cinemaroom= MovieSchedule.find_by schedule_id: @schedule
  end

  private

  def bookings_params
    params.require(:booking).permit :status, :ticket_id, :user_id
  end
end
