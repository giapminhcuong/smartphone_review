class StaticPagesController < ApplicationController
  def home
    if !logged_in?
      redirect_to "/login"
    end
    @newest_reviews = Review.order("created_at DESC").limit(4)
    @top_reviews = Review.left_joins(:comments).group(:id).order('avg(comments.star) ASC').limit(3)
    @follower_users=[]
    if current_user!= nil
      @follower_users = current_user.followers.all
    end
  end
end
