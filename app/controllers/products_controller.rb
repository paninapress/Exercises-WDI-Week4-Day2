class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		product = Product.create(name: params["product"]["name"], price: params["product"]["price"], description: params["product"]["description"])
		redirect_to product_path(product)
	end

	def show
		@product = Product.find(params[:id])
		@categories = @product.categories
	end

	def edit
	end

	def update
	end
end
