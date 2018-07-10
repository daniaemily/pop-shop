class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def index
    @order = Order.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    # see if you sent the product_id param
    # create an order
    # update the product (add the order id to it)
    # redirect user somewhere
  end

  def new
    #provides form
  end
end
