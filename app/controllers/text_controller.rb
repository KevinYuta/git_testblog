class TextController < ApplicationController
  def index
      @blog = Text.all
  end
end
