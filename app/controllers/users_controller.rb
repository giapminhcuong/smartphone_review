class UsersController < ApplicationController
  load_and_authorize_resource param_method: :user_params
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = "ユーザーを作成させました"
      redirect_to root_url
    else
      flash[:danger] = "ユーザーを作成できません"
      render :new
    end
  end
  
  def show
    @reviews = @user.reviews.all.order_by_time
    @comments = @user.comments.all.order_by_time
  end
  
  private
  def user_params
    params.require(:user).permit :name, :email, :password,
      :password_confirmation
  end
end