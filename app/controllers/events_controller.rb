class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy] 
  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def edit
  end


  private
  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(
      :title,
      :start,
      :end,
      :color,
      :allday
    )
  end
end
