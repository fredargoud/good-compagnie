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
end
