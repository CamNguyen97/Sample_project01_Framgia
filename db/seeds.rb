# 10.times do |n|
#   User.create(name: Faker::Name.name,
#     password: "12345678",
#     password_digest: "password_digest",
#     remember_digest: "remember_digest",
#     activation_digest: "activation_digest",
#     activated: true,
#     activated_at: Faker::Date.forward(23),
#     reset_digest: "reset_digest",
#     reset_sent_at: "reset_sent_at",
#     address: Faker::Address.city,
#     phone: "0978446292#{n+1}",
#     email: "user#{n+1}@gmail.com",
#     status: true
#     )
# end

# 10.times do |n|
#   Cinemaroom.create(
#     num_row_seats: Faker::Number.between(1, 10),
#     num_of_seats: Faker::Number.between(1, 10),
#     description: Faker::Lorem.sentences,
#     status: true
#     )
# end

# 10.times do |n|
#   Seat.create(
#     seat_type: false,
#     status: true,
#     cinemaroom_id: Faker::Number.between(1, 10)
#     )
# end

# 10.times do
#   Studio.create(
#     name: Faker::Name.name,
#     status: true
#   )
# end

# 10.times do
#   Movie.create(
#     name: Faker::Name.name,
#     produce_year: Faker::Date.forward(23),
#     broadcasing_time: Faker::Number.between(100, 200),
#     description: Faker::Lorem.sentences,
#     trailer: Faker::Internet.url("youtube.com"),
#     status: Faker::Boolean.boolean,
#     studio_id: Faker::Number.between(1, 10)
#   )
# end

# 10.times do |n|
#   Ticket.create(
#     pay_ticket: Faker::Number.between(120, 150),
#     show_time: Faker::Date.forward(23),
#     seat_id: Faker::Number.between(1, 10),
#     movie_id: Faker::Number.between(1, 10),
#     cinemaroom_id: Faker::Number.between(1, 10),
#     status: true
#     )
# end

# 10.times do |n|
#   BookingTicket.create(
#     user_id: Faker::Number.between(1, 10),
#     ticket_id: Faker::Number.between(1, 10),
#     status: true
#     )
# end

# 10.times do |n|
#   SchedulesCinemaroom.create(
#     cinemaroom_id: Faker::Number.between(1, 10),
#     schedule_id: Faker::Number.between(1, 10)
#     )
# end

# 10.times do |n|
#   Schedule.create(
#     show_case: Faker::Number.between(120, 150),
#     start_time: Faker::Date.forward(23),
#     end_time: Faker::Date.forward(23),
#     date_movie: Faker::Date.forward(23),
#     status: true
#     )
# end

# 10.times do |n|
#   MovieSchedule.create(
#     movie_id: Faker::Number.between(1, 10),
#     schedule_id: Faker::Number.between(1, 10)
#     )
# end

# 10.times do |n|
#   Movietype.create(
#     name: Faker::Name.name,
#     status: true
#     )
# end

# 10.times do |n|
#   MoviesMovietype.create(
#     movie_id: Faker::Number.between(1, 10),
#     movitype_id: Faker::Number.between(1, 10)
#     )
# end
 # 10.times do |n|
 #   User.create(name: Faker::Name.name,
 #     password: "12345678",
 #     password_digest: "password_digest",
 #     remember_digest: "remember_digest",
 #     activation_digest: "activation_digest",
 #     activated: true,
 #     activated_at: Faker::Date.forward(23),
 #     reset_digest: "reset_digest",
 #     reset_sent_at: "reset_sent_at",
 #     address: Faker::Address.city,
 #     phone: "0978446292{n+1}",
 #     email: "user{n+1}@gmail.com",
 #     status: true
 #     )
 # end

#  10.times do |n|
#    Cinemaroom.create(
#      num_row_seats: Faker::Number.between(1, 10),
#      num_of_seats: Faker::Number.between(1, 10),
#      description: Faker::Lorem.sentences,
#      status: true
#      )
#  end

#  10.times do |n|
#    Seat.create(
#      seat_type: false,
#      status: true,
#      cinemaroom_id: Faker::Number.between(1, 10)
#      )
#  end

# 10.times do
#   Studio.create(
#     name: Faker::Name.name,
#     status: true
#   )
# end

# 10.times do
#   Movie.create(
#     name: Faker::Name.name,
#     produce_year: Faker::Date.forward(23),
#     broadcasing_time: Faker::Number.between(100, 200),
#     descreption: Faker::Lorem.sentences,
#     trailer: Faker::Internet.url("youtube.com"),
#     status: Faker::Boolean.boolean,
#     studio_id: Faker::Number.between(1, 10)
#   )
# end

 # 10.times do |n|
 #   Ticket.create(
 #     pay_ticket: Faker::Number.between(120, 150),
 #     show_time: Faker::Date.forward(23),
 #     seat_id: Faker::Number.between(1, 10),
 #     movie_id: Faker::Number.between(1, 10),
 #     cinemaroom_id: Faker::Number.between(1, 10),
 #     status: true
 #     )
 # end

 # 10.times do |n|
 #   BookingTicket.create(
 #     user_id: Faker::Number.between(1, 10),
 #     ticket_id: Faker::Number.between(1, 10),
 #     status: true
 #     )
 # end

 # 10.times do |n|
 #   SchedulesCinemaroom.create(
 #     cinemaroom_id: Faker::Number.between(1, 10),
 #     schedule_id: Faker::Number.between(1, 10)
 #     )
 # end

 # 10.times do |n|
 #   Schedule.create(
 #     show_case: Faker::Number.between(120, 150),
 #     start_time: Faker::Date.forward(23),
 #     end_time: Faker::Date.forward(23),
 #     date_movie: Faker::Date.forward(23),
 #     status: true
 #     )
 # end

 # 10.times do |n|
 #   MovieSchedule.create(
 #     movie_id: Faker::Number.between(1, 10),
 #     schedule_id: Faker::Number.between(1, 10)
 #     )
 # end

 # 10.times do |n|
 #   Movietype.create(
 #     name: Faker::Name.name,
 #     status: true
 #     )
 # end

 # 10.times do |n|
 #   MoviesMovietype.create(
 #     movie_id: Faker::Number.between(1, 10),
 #     movitype_id: Faker::Number.between(1, 10)
 #     )
 # end
