class EventsController < ApplicationController
  def index
    if params[:query].present?
      @events = Event.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @events = Event.all
    end
  end

  def show
    @event = Event.find(params[:id])
  end
end
