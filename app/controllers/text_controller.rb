class TextController < ApplicationController
    
  before_action :move_to_index, exceot: [:index, :show]
  
  def index
      @blog = Text.all
  end
  
  def new
  end
  
  def create
    Text.create(text_params)
  end
  
  def show
    @blog = Text.find(params[:id])
  end
  
  def edit
    @blog = Text.find(params[:id])
  end
  
  def update
    @blog = Text.find(params[:id])
    @blog.update(text_params)
  end
  
  def destroy
    blog = Text.find(params[:id])
    blog.destroy if current_user_id == text.user_id
       #ログインしているユーザーとtextのゆーさ―idが一致するときのみ削除できるようにしよう
  end
  
  private
  def text_params
    params.permit(:text)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
