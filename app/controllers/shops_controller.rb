class ShopsController < ApplicationController

  def index
  end

  def show
    @shop = Shop.find(params[:id])
    @image= @item.images
  end
  
  def edit

  end
  def update

  end


  def destroy
  end

  private

  def shop_params
    params.require(:shop).permit(

    )
  end


end
