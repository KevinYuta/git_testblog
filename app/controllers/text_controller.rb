class TextController < ApplicationController
  def index
      @blog = Text.all
  end
  
  def new
  end
  
  def create
    Text.create(text_params)
  end
  
  private
  def text_params
    params.permit(:text)
  end
  
  def show
    @blog = Text.find(params[:id])
  end
  
  def edit
    @blog = Text.find(params[:id])
  end
end
