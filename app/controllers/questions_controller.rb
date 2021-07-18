class QuestionsController < ApplicationController

	def show
		@question = Question.find_by(id:params[:id])
	end

  def new
  end

  def create
  	question = Question.new(question_params)
  	if question.save!
  		redirect_to '/discussions'
  	else
  		redirect_to '/question/new'
  	end
  end

  def destroy
  end

  private

  def question_params
  	params.permit(:title, :body)
  end
end
