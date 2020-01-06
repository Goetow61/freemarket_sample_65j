class TopController < ApplicationController
  
  def index
    @ladies = Item.where(category: "レディース").take(10)
  end

 
end
