class WelcomeController < ApplicationController
  def index
  	@items = Item.all
  end

  def discussion
  	@questions = Question.all
  end
end
