class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  # def edit
  # end

  def create
    @product = Product.new(product_params)

    @product.save!
    redirect_to @product
  end

  # def update
  # end

  # def destroy
  # end

  private

  def product_params
    params.require(:product).permit(:title, :description, :image_url, :asking_price)
  end


end
