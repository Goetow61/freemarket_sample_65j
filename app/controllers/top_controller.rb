class TopController < ApplicationController
  
  def index
    @ladies = Item.where(category: "レディース").take(10)
    @mens = Item.where(category: "メンズ").take(10)
    @homeAppliances = Item.where(category: "家電・スマホ・カメラ").take(10)
    @toys = Item.where(category: "おもちゃ・ホビー・グッズ").take(10)
  end

  def new
  end

 
end
