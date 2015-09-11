class ItemsController < ApplicationController

  def create
    @user = current_user
    @item = current_user.items.create(item_params)
    if @item.save
      flash.now[:notice] = "The item was saved successfully."
      redirect_to user_path
    else
      flash[:error] = "There was an error saving the item."
      redirect_to user_path
    end
  end

  def destroy
  end
  
  private

  def item_params
    params.require(:item).permit(:name)
  end
end
