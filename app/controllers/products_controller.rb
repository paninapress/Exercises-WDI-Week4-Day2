class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		product = Product.create(name: params["product"]["name"], price: params["product"]["price"], description: params["product"]["description"])
		redirect_to product
	end

	def show
		@product = Product.find(params[:id])
		@categories = @product.categories
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		product = Product.find(params[:id])
		updated_info = params.require(:product).permit(:name, :price, :description)
		product.update_attributes(updated_info)
		redirect_to product
	end
end