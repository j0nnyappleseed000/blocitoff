class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @item = @user.items.build
  end

end