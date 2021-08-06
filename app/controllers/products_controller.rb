class ProductsController < ApplicationController
  before_action :admin_check, only: [:new, :create, :edit, :destroy]
  before_action :set_product, only: [:edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else 
      render :new
    end

  end

  def show
    @product = Product.where(params[:id])
    @product = Product.find(params[:id])
  end 

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product.id)
    else
      render :edit
    end

  end

  def destroy
    if @product.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  def meat
    @product1 = Product.where(category_id:2)
  end

  def fish
    @product2 = Product.where(category_id:3)
  end

  def cup
    @product3 = Product.where(category_id:4)
  end

  def croquette
    @product4 = Product.where(category_id:5)
  end

  def rice
    @product5 = Product.where(category_id:6)
  end

  def noodle
    @product6 = Product.where(category_id:7)
  end

  def side
    @product7 = Product.where(category_id:8)
  end

  def pizza
    @product8 = Product.where(category_id:9)
  end

  def gratin
    @product9 = Product.where(category_id:10)
  end

  def foodstuff
    @product10 = Product.where(category_id:11)
  end

  def sweets
    @product11 = Product.where(category_id:12)
  end


  private

  def product_params
    params.require(:product).permit(:image, :product_name, :product_num, :description, :ganre_id, :category_id, :cooking_method_id, :cooking_method2_id, :company_id)
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def admin_check
    unless current_user&.admin?
      redirect_to products_path
    end
  end


end