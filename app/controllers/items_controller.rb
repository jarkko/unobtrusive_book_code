class ItemsController < ApplicationController
  def index
  	@not_done = Item.find_not_done
  	@done = Item.find_done
  	@new_item = Item.new
  end
  
  def create
    @item = Item.create(params[:item])
    
    respond_to do |wants|
      wants.html do
        redirect_to items_path
      end
      wants.js
    end
  end
  
  def update
    @item = Item.find(params[:id])
    @item.toggle
    
    respond_to do |wants|
      wants.html
      wants.js
    end
  end
end
