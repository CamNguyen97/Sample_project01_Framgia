class ApplicationMailer < ActionMailer::Base
  default from: ENV["personal_email"]
  layout "mailer"
end
