class EventsController < ApplicationController

  before_action :set_event, only: [:index, :show, :edit, :update, :destroy] 
  before_action :get_shop_info, only: [:show, :new, :create]
  
  def index
    @events = Event.find(params[:id])
    
  end

  def show

  end

  def new
    @event = Event.new
    # binding.pry
  end

  def create
    @event = Event.new(event_params)
    binding.pry
    if @event.save
      # binding.pry
      redirect_to shop_path(@shop)
    else
      # binding.pry
      redirect_to new_event_path(@shop)
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
      # :title,
      # :start_at,
      # :end_at,
      # :event_status
      :shop_id
    )
      
  end
  def get_shop_info
    @shop = Shop.find_by(id: params[:shop_id])
  end
end
