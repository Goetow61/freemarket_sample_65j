class ItemssController < ApplicationController
  def index
    @item = Item.new
    # @items = @user.items
  end
end
  
private

  def item_params
    params.require(:item).permit(:user_id, :buyer_id, :name, :detail, :status, :postage, :postmethod, :streetadress, :days, :price, :category_tree_id)
  end
end