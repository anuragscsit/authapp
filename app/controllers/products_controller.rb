class ProductsController < ApplicationController
	
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def edit
		@product = Product.find(params[:id])
	end

	def show
		@product = Product.find(params[:id])
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to action: :index
		else 
			render 'new'
		end
	end

	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			redirect_to action: :index
		else 
			render 'edit'
		end
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		@products = Product.all
	end

	private

		def product_params
			params.require(:product_params).permit(:name, :category, :price)
		end

end
