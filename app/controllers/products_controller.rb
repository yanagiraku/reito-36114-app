class ProductsController < ApplicationController
# before_action :set_product, only:[:show, :meat, :fish, :cup, :croquette, :rice, :noodle, :side, :pizza, :gratin, :foodstuff, :sweets]

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

  def show

  end

  def meat
    @product1 = Product.where(category_id:2)
  end

  def fish
    @product2 = Product.where(:category.name="魚系")
  end

  def cup
    @product3 = Product.where(:category.name= "カップ")
  end

  def croquette
    @product4 = Product.where(:category.name= "コロッケ")
  end

  def rice
    @product5 = Product.where(:category.name= "米飯")
  end

  def noodle
    @product6 = Product.where(:category.name= "麺類")
  end

  def side
    @product7 = Product.where(:category.name= "お惣菜")
  end

  def pizza
    @product8 = Product.where(:category.name= "ピザ")
  end

  def gratin
    @product9 = Product.where(:category.name= "グラタン・ドリア")
  end

  def foodstuff
    @product10 = Product.where(:category.name="食材")
  end

  def sweets
    @product11 = Product.where(:category.name= "スイーツ")
  end


  private

  def product_params
    params.require(:product).permit(:image, :product_name, :product_num, :description, :ganre_id, :category_id, :cooking_method_id, :cooking_method2_id, :company_id)
  end

  # def set_product
  #   @product = Product.find(params[:id])
  # end




end
