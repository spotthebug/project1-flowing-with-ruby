class AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    if @answer.save
      redirect_to @question
    else
      flash[:error] = "Unable to save Answer!"
    end
  end

  def show
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
  end

  private
  def answer_params
    params.require(:answer).permit(:description, :user_id)
  end

end
