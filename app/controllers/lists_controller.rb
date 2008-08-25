class ListsController < ApplicationController
  def update
    params[:item].each do |key, values|
      item = Item.find(key)
      item.update_attributes(values)
    end
    
    redirect_to items_path
  end
end