class TextController < ApplicationController
    
  # before_action :move_to_index, exceot: [:index, :show]
  # after_action :move_to_index, only: [:create, :update, :destroy]
  
  def index
      @text = Text.all
  end
  
  def new
  end
  
  def create
    Text.create(text_params)
  end
  
  def show
    @text = Text.find(params[:id])
  end
  
  def edit
    @text = Text.find(params[:id])
  end
  
  def update
    @text = Text.find(params[:id])
    @text.update(text_params)
  end
  
  def destroy
    text = Text.find(params[:id])
    text.destroy if current_user_id == text.user_id
       #ログインしているユーザーとtextのゆーさ―idが一致するときのみ削除できるようにしよう
  end
  
  private
  def text_params
    params.permit(:text)
  end
  
  # def move_to_index
  #   redirect_to action: :index unless user_signed_in?
  # end
end
