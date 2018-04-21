class Application2Controller < ActionController::Base
  protect_from_forgery with: :exception
  layout "home"
  before_action :set_locale

  private
  def set_locale
	I18n.locale = params[:locale] || I18n.default_locale
  end
end
