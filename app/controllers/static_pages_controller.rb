class StaticPagesController < ApplicationController
  def home
    @newest_reviews = Review.order("created_at DESC").limit(8)
    @top_reviews = Review.left_joins(:comments).group(:id).order('avg(comments.star) DESC').limit(3)
  end
end
