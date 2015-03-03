module Pricerunner

  class ProductsController < ApplicationController

    def index
      products = Product.all
      csv = Pricerunner::ProductsCsv.new(products).csv

      respond_to do |format|
        format.html { render :text => csv }
        format.csv { render :text => csv }
      end
    end

  end

end

