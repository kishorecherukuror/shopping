class ProductsController < ApplicationController
  def new
  	@product = Product.new
  end

  def create
  	byebug
  	@product = Product.new(product_params)
  	if @product.save!
  		redirect_to "/"
  	end
  end

  def category_product
  	@category = Category.find params[:id]
  	@product = Product.new
    @categories = Category.all
  end

  def create_product
  	@category = Category.find params[:category_id]
  	@product = Product.new(product_params)
  	if @product.save!
  		@category.products << @product
  		redirect_to "/"
  	end
  end

  def products_list
    @category = Category.find params[:id]
    @products = Product.where(category_id: @category.id)
  end

private
	
  def product_params
  	params.require(:product).permit!
  end
end
