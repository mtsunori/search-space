class EventsController < ApplicationController

  before_action :set_event, only: [:index, :show, :edit, :update, :destroy] 
  before_action :get_shop_info, only: [:show, :new, :create, :update]
  
  def index
    @events = Event.find(params[:id])
    
  end

  def show
    
  end

  def new
    @event = Event.new
    
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to shop_path(@shop.id)
    else
      redirect_to new_shop_event_path(@shop.id)
  
    end

  end

  def edit
  end

  def update
    # binding.pry
    if @event.update!(update_params)
      flash[:notice] = '予約が確定しました。'
      redirect_to root_path
    else
      flash[:alert] = '予約に失敗しました。'
      redirect_to controller: "events", action: 'show'
    end

  end

  def destroy
    @event.destroy
    redirect_to root_path
  end


  private
  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(
      :title,
      :day_price,
      :start_at,
      :end_at,
      :event_status,
      :shop_id
    )
  end

  def update_params
    params.require(:event).permit(
    :title,
    :event_status,
    :borrower_id
    )
    # .marge(borrower_id: current_user.id)
  end
 
  def get_shop_info
    @shop = Shop.find_by(id: params[:shop_id])
  end
end
