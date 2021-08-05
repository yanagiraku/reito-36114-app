class ReviewsController < ApplicationController
  before_action :set_item, only:[:new, :create]


  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end

  def meat


  end

  def fish
  end

  def cup
  end

  def croquette
  end

  def rice
  end

  def noodle
  end

  def side
  end

  def pizza
  end

  def gratin
  end

  def foodstuff
  end

  def sweets
  end





  private


  
  def review_params
    params.require(:review).permit(:title, :created_day, :recommend_score_id, :comment).merge(user_id: current_user.id, product_id: params[:product_id])
  end

  def set_item
    @product = Product.find(params[:product_id])
  end

end

