class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def new
		@category = Category.new
	end

	def create
		category = Category.create(name: params["category"]["name"])
		params["category"]["product_ids"].each { |x| Association.create(product_id: x, category_id: category_id) if x != "" }
		#goes into the params hash into the product_ids hash related by "Association"

		redirect_to category
	end

	def show
		@category = Category.find(params[:id])
		@products = @category.products
	end

	def edit
		@category = Category.find(params[:id])
	end

	def update
		category = Category.find(params[:id])
		updated_info = params.require(:category).permit(:name)
		category.update_attributes(updated_info)
		product.product_ids = params["product"]["product_ids"]
		redirect_to category
	end
end
