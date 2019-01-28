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

  def create
    require "open-uri"
    require "nokogiri"
    html = open("https://www.1001traiteurs.com/lieu/france/auvergne-rhone-alpes/isere/grenoble").read
    # 1. Parse HTML
    doc = Nokogiri::HTML(html, nil, "utf-8")
    # 2. For the first five results
    @results = []
    doc.search(".teaser-card").first(9).each do |element|
      # 3. Create recipe and store it in results
      name = element.search('.teaser-textblock>a').text.strip
      description = element.search('.teaser-textblock>p').text.strip
      @results << Event.new(name: name, description: description)
    end
    return @results
  end
end
