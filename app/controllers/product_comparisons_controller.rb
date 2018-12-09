class ProductComparisonsController < ApplicationController
  def show
    @number_of_products = 2
  end

  def compare
    @params = params[:products]
    @products = []
    if @params 
      @params.each do |key, value|
        @products << Product.find(value)
      end
    end
    respond_to do |format|
      format.js
    end
  end
end
