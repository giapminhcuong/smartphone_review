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
  
  def edit; end

  def update
    if @user.update_attributes user_params
      flash[:success] = "ユーザーを更新されました"
      redirect_to request.referrer
    else
      render :edit
    end
  end

  def destroy
    if @user.destroy
      flash[:success] = "ユーザーを削除されました"
    else
      flash[:danger] = "ユーザーを削除されませんでした"
    end
    redirect_to root_url
  end
  
  private
  def user_params
    params.require(:user).permit :name, :email, :password,
      :password_confirmation, :avatar
  end
end