class Api::V1::ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]    
    def index
    @products = Product.all
    render json: @products
  end

  def show
    @Product = Product.find(params[:id])
    render json: @Product
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: :created 
    else
      render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def product_params
    params.require(:product).permit(:name,:price)
  end

end
