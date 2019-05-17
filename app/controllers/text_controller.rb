class TextController < ApplicationController
    
  # before_action :move_to_index, exceot: [:index, :show]
  # after_action :move_to_index, only: [:create, :update, :destroy]
  
  def index
      @texts = Text.all
  end
  
  def new
  end
  
  def create
    Text.create(text: text_params[:text], user_id: current_user.id)
  end
  
  def edit
    @texts = Text.find(params[:id])
  end
  
  def update
    @texts = Text.find(params[:id])
    @texts.update(text_params)
  end
  
  def destroy
    text = Text.find(params[:id])
    text.destroy
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
