class ShopsController < ApplicationController

  def index
    # @new_shop = Shop.where(params[:id]).order{"created_st_DESC"}.limit(3)
  end

  def show
    @shop = Shop.find(params[:id])
    @image= @item.images
  end

  def new
    @shop = Shop.new
    @shop.images.build
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

    )
  end


end
