class EventsController < ApplicationController
  def index
    if params[:query].present?
      @events = Event.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @events = Event.all
    end

    # @events = Event.where.not(latitude: nil, longitude: nil)

    # @markers = @events.map do |event|
    #   {
    #     lng: event.longitude,
    #     lat: event.latitude
    #   }
    # end
  end

  def show
    @event = Event.find(params[:id])
  end
end
