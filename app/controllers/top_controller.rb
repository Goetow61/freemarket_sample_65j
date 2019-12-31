class TopController < ApplicationController
  def index
    @items= Item.all
    @images = Image.all
  end

private

  def item_params
    params.require(:item).permit(:user_id, :buyer_id, :name, :detail, :status, :postage, :postmethod, :streetadress, :days, :price, :category_tree_id)
  end

  def image_params
    params.require(:image).permit(:item_id, :image )
  end
end