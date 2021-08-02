class ProductsController < ApplicationController

  def index
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

  def product_params
    params.require(:product).permit(:image, :product_name, :product_num, :description, :ganre_id, :category_id, :cooking_method_id, :cooking_method2_id, :company_id)
  end


end
