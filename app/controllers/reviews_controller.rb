class ReviewsController < ApplicationController
  before_action :set_item, only:[:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to "/product/#{review.product.id}"
    else
      render :new
    end
  end



  private


  
  def review_params
    params.require(:review).permit(:title, :created_day, :recommend_score_id, :comment).merge(user_id: current_user.id, product_id: params[:product_id])
  end

  def set_item
    @product = Product.find(params[:product_id])
  end

end

