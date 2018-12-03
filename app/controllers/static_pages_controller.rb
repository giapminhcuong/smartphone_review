class StaticPagesController < ApplicationController
  def home
    @newest_reviews = Review.order("created_at DESC").limit(4)
    @top_reviews = Review.left_joins(:comments).group(:id).order('avg(comments.star) ASC').limit(3)
    @follower_users = current_user.followers.all
  end
end
