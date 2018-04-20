class Application2Controller < ActionController::Base
  protect_from_forgery with: :exception
  layout "home"
end
