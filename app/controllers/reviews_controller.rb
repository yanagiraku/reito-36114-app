class ReviewsController < ApplicationController
  before_action :set_product, only:[:new, :create, :edit, :update, :destroy]


  def index
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

  def show
    @product = Product.where(params[:id])
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to product_path(@product.id)
    else
      render :edit
    end

  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy
      redirect_to root_path
    else
      render :show
    end

  end

  def meat
    @review1 = Review.where(category_id:2) 
  end

  def fish
    @review2 = Review.where(category_id:3) 
  end

  def cup
    @review3 = Review.where(category_id:4) 
  end

  def croquette
    @review4 = Review.where(category_id:5) 
  end

  def rice
    @review5 = Review.where(category_id:6) 
  end

  def noodle
    @review6 = Review.where(category_id:7) 
  end

  def side
    @review7 = Review.where(category_id:8) 
  end

  def pizza
    @review8 = Review.where(category_id:9) 
  end

  def gratin
    @review9 = Review.where(category_id:10) 
  end

  def foodstuff
    @review10 = Review.where(category_id:11) 
  end

  def sweets
    @review11 = Review.where(category_id:12) 
  end





  private


  
  def review_params
    params.require(:review).permit(:title, :created_day, :recommend_score_id, :comment, :category_id).merge(user_id: current_user.id, product_id: params[:product_id])
  end


  def set_product
    @product = Product.find(params[:product_id])

  end


end

