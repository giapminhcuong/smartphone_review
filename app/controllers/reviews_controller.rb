class ReviewsController < ApplicationController
    load_and_authorize_resource param_method: :review_params
    
    def index
        @reviews = if params[:field] == "top_cmt"
                    Review.order_by_cmt.page(params.permit![:page]).per 10
                else
                    Review.order_by_time.page(params.permit![:page]).per 10
                end
    end
    
    def new
        @review = Review.new
        @review.products.build
    end
    
    def create
        @review = current_user.reviews.build review_params
        if @review.save
          flash[:success] = "レビューを投稿されました"
          redirect_to @review
        else
          render :new
        end
    end
        
    def show
        @comments = @review.comments.all
        @comment = @review.comments.build
    end
        
    def edit; end
        
    def update
        if @review.update_attributes review_params
          flash[:success] = "レビューを更新されました"
          redirect_to @review
        else
          render :edit
        end
    end
        
    def destroy
        @review.destroy
        flash[:success] = "レビューを削除されました"
        redirect_to reviews_url
    end

    private
        def review_params
            params.require(:review).permit :title, :banner, :content, :product_ids
        end
end
