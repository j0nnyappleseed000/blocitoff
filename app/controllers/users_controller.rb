class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @items = @user.items
  end

  def destroy
    @user = current_user
    @item = current_user.items.find(item_params)

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