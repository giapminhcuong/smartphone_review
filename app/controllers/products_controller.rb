class ProductsController < ApplicationController
  def index
    @product = Product.order_by_time.page(params[:page]).per 20
  end
  def new
    @product = Product.new
  end
  def create
    @product = Product.new user_params
    if @product.save
      flash[:success] = "ユーザーを作成させました"
      redirect_to root_url
    else
      flash[:danger] = "ユーザーを作成できません"
      render :new
    end
  end
  
  private
  def product_params
    params.require(:product).permit :name, :category, :maker
  end
end
