class ProductsController < ApplicationController
  def index
    products = Product.all
    csv = ProductsCsv.new(products).csv

    respond_to do |format|
      format.html { render :text => csv }
      format.csv { render :text => csv }
    end
  end
end
