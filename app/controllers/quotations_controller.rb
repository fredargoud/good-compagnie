class QuotationsController < ApplicationController
  before_action :set_event

  def new
    @quotation = Quotation.new
  end

  def create
    @quotation = Quotation.new(quotation_params)
    @quotation.event = @event
    @quotation.save
    redirect_to event_path(@event)
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def quotation_params
    params.require(:quotation).permit(:first_name)
  end
end
