class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)

    @product.save!
    redirect_to @product
  end

  # def update
  # end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :photo, :asking_price)
  end


end
