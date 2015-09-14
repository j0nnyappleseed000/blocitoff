class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @items = @user.items
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end