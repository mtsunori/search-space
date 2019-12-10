class ShopsController < ApplicationController

 

  def index
    # @new_shop = Shop.where(params[:id]).order{"created_st_DESC"}.limit(3)
  end

  def show
    @shop = Shop.find(params[:id])
    @events = @shop.events
    # binding.pry

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @events }
      format.json { render :json => @events }
    end
  end

  def new
    @shop = Shop.new
    # @shop.images.build
  end

  def create

  end
  
  def edit

  end
  def update

  end


  def destroy
    @shop = Shop.find(params[:id])
  end

  private

  def shop_params
    params.require(:shop).permit(
    :id,
    :name,
    :price,
    :explanation,
    :capacity,
    :user_id,
    :address,
    :house_number,
    :building_name,
    :room_number,
    :event_status,
    :borrower_id,
    :lending_time_start,
    :lending_time_end,
    :business_hour_start,
    :business_hour_end,
    :phone_number,
    images_attributes: [:image]
    )
  end

  def set_search
    @q = Item.ransack(params[:q])
    @keyword = :name_or_explanation_or_adress_cont
  end


end
