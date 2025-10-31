class ProductsController < ApplicationController
  require "httparty"
  before_action :apiii, only: [ :index ]
  def index
    @products = Product.all
    @products_fromapi = @response["products"]
  end

  def show
    @product = Product.find(params[:id])
    @comments = @product.comments
    @new_comment = Comment.new
  end
  def apiii
    limit = 5
    page = params[:page].to_i
    page = 1 if page < 1
    skip = (page -1) * limit

    url = "https://dummyjson.com/products?limit=#{limit}&skip=#{skip}"


    @response = HTTParty.get(url).parsed_response
    @products_fromapi = @response["products"]
    @total = @response["total"]
    @page = page
    @total_pages = (@total / limit.to_f).ceil
  end
end
