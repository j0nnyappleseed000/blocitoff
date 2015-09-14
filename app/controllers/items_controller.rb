class ItemsController < ApplicationController

  def create
    @user = current_user
    @item = current_user.items.create(item_params)

    if @item.save
      flash[:notice] = "The item was saved successfully."
      redirect_to user_path(current_user)
    else
      flash[:error] = "There was an error saving the item."
      redirect_to user_path(current_user)
    end

    # respond_to do |format|
    #   format.html
    #   format.js
    # end
  end
  
  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = "Item was removed from list."
    else
      flash[:error] = "There was an error while attempting to remove the item from the list."
    end

    respond_to do |format|
       format.html
       format.js
     end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
