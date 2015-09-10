class ItemsController < ApplicationController

  def create
    @item = current_user.items.create(item_params)
    if @item.save
      
    else
    
    end
  end
  
  private

  def item_params

  end
end
