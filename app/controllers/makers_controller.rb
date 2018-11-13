class MakersController < ApplicationController
  def new
        @maker = Maker.new
  end
    
  def create
    @maker = Maker.new maker_params
    if @maker.save
      flash[:success] = "メーカーを作成させました"
      redirect_to request.referrer || root_url
    else
      flash[:danger] = "メーカーを作成できません"
      render :new
    end
  end
        
    def edit; end
        
    def update
        if @maker.update_attributes maker_params
          flash[:success] = "メーカーを更新されました"
          redirect_to request.referrer || root_url
        else
          render :edit
        end
    end
        
    def destroy
        @maker.destroy
        flash[:success] = "メーカーを削除されました"
        redirect_to request.referrer || root_url
    end
    
    private
        def maker_params
            params.require(:maker).permit :name
        end
end
