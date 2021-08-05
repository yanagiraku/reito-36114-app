class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews
  end

  def user_params
    params.require(:user, :prototype, :review).permit(:nickname, :age)
  end

end

