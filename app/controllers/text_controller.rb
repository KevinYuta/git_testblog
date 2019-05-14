class TextController < ApplicationController
  def index
      @blog = Text.all
  end
  
  def new
  end
end
