class ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [:show]

  def new
    @item = Item.new
    @item.images.new
     #セレクトボックスの初期値設定
    @category_parent_array = Category.where(ancestry: nil).pluck(:name)
    @category_parent_array.unshift("---")
    # データベースから、親カテゴリーのみ抽出し、配列化
  end

  # 以下全て、formatはjsonのみ
   # 親カテゴリーが選択された後に動くアクション
   def get_category_children
    #選択された親カテゴリーに紐付く子カテゴリーの配列を取得
    @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
   end

 # 子カテゴリーが選択された後に動くアクション
 def get_category_grandchildren
#選択された子カテゴリーに紐付く孫カテゴリーの配列を取得
    @category_grandchildren = Category.find("#{params[:child_id]}").children
 end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end
  


  private

  def item_params
    params.require(:item).permit(:item_name, :detail, :status, :postage, :postmethod, :streetadress, :days, :price, :size, :brand, :category_tree_id, :category, images_attributes:  [:src, :_destroy]).merge(user_id: current_user.id)
  end

  def set_item
    @item = item.find(params[:id])
  end
end



