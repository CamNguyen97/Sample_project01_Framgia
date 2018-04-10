class PageAdmin::StudiosController < PageAdmin::ApplicationController
  def index
    @studios = Studio.all.order name: :asc
  end
end
