class EventsController < ApplicationController
  def index
    if params[:query].present?
      @events = Event.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @events = Event.all
    end
  end

  def show
    @events = Event.where.not(latitude: nil, longitude: nil)
    @event = Event.find(params[:id])
    @markers = { lng: @event.longitude, lat: @event.latitude }
  end
end
