class BookingTicketsController < ApplicationController
  def index
  end

  def new
    @bookings = BookingTicket.new
  end
end
