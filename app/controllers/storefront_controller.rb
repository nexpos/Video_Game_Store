class StorefrontController < ApplicationController
  def all_items
    @products = Product.all
  end

  def items_by_category
    
    # The long way below
    # @category = Category.find(params[:category_id])
    # @products = Product.all
    #
    # @products_by_category = []
    #
    # @products.each do |product|
    #   if product.category.id == @category.id
    #     @products_by_category.push(product)
    #   end
    # end

    @products = Product.where(category_id: params[:category_id])
    @category = Category.find(params[:category_id])

  end

  def items_by_brand

    @products = Product.where(brand: params[:brand])
    @brand = params[:brand]

  end
end
