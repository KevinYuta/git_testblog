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
end
