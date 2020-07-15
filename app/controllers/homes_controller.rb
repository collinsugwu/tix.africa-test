class HomesController < ApplicationController
  def index
    @events = Event.paginate(page: params[:page], per_page: 10)
  end
end
