class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @review = Review.where(user_id:current_user.id)

  end

  private
  def user_params
    params.require(:user, :prototype, :review).permit(:nickname, :age)
  end

end

