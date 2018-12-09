class ResultsController < ApplicationController
  def index
    if(request.referrer.include? 'reviews')
      redirect_to reviews_url(:query => params[:query])
    else
      redirect_to products_url(:query => params[:query])
    end
  end
end
