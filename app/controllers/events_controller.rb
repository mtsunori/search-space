class EventsController < ApplicationController
  before_action :set_event, only: [:index, :show, :edit, :update, :destroy] 
  def index
    # @shop = Shop.find(params[:id])
    # @events = @shop.events
    @events = Event.find(params[:id])
    
  end

  def show

  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
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
      :allday,
      :shop_id
    )
  end
end
