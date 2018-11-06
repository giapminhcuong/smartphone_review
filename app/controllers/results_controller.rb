class ResultsController < ApplicationController
  def index
    @pg_search_documents = PgSearch.multisearch(params[:query])
    @pg_search_users = @pg_search_documents.where(searchable_type: "User").page(params.permit![:page1]).per 10
    @pg_search_reviews = @pg_search_documents.where(searchable_type: "Review").page(params.permit![:page2]).per 10
    @pg_search_products = @pg_search_documents.where(searchable_type: "Product").page(params.permit![:page3]).per 9
    @pg_search_makers = @pg_search_documents.where(searchable_type: "Maker").page(params.permit![:page4]).per 9
  end
end
