class PageAdmin::BookingsController < PageAdmin::ApplicationController
  def index
    @booking_tickets = BookingTicket.all
  end
end
