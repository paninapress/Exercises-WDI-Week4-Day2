class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		product = Product.create(name: params["product"]["name"], price: params["product"]["price"], description: params["product"]["description"])
		params["product"]["category_ids"].each { |x| Association.create(product_id: product.id, category_id: x) if x != "" }
		#goes into the params hash into the category_ids hash related by "Association"
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
		product.category_ids = params["product"]["category_ids"]
		redirect_to product
	end
end