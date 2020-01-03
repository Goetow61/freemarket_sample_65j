class TopController < ApplicationController
  def index
    @items= Item.all.last(10)
    @images = Image.all.last(10)
  end

  def show
    @item = Item.find(params[:id])
    @image = Tweet.find(params[:id])
  end

private

  def item_params
    params.require(:item).permit(:user_id, :buyer_id, :name, :detail, :status, :postage, :postmethod, :streetadress, :days, :price, :category_tree_id)
  end

  def image_params
    params.require(:image).permit(:item_id, :image )
  end
end