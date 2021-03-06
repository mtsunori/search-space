class ShopsController < ApplicationController

require "shop.rb"

  def index
    @new_shop =Shop.incl.created_desc.limit(3)
  end

  def show
    @shop = Shop.find(params[:id])
    @events = @shop.events
    @images = @shop.images
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




end
