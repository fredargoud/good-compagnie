class EventsController < ApplicationController
  before_action :set_event, only: :show

  def index
    if params[:query].present?
      # @events = Event.where("address ILIKE ?", "%#{params[:query]}%")
      @events = Event.near("%#{params[:query]}%", 100)
    else
      @events = Event.all
    end
  end

  def show
    # @events = Event.where.not(latitude: nil, longitude: nil)
    @markers = { lng: @event.longitude, lat: @event.latitude }
  end

  def traiteurs
    @traiteurs = Event.where(category: 'traiteur')
  end

  def animations
    @animations = Event.where(category: 'animation')
  end

  def team_building
    @team_building = Event.where(category: 'team-building')
  end

  def soiree_dentreprise
    @soirees = Event.where(category: "soiree d'entreprise")
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.event = @event
    @event.save
    redirect_to event_path(@event)
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :description, :prestations, :address)
  end
end
