class AnswersController < ApplicationController

  def new
    @user = current_user
    @question = @user.questions.find(params[:question_id])
    @answer = @question.answers.new
  end

  def create
    @user = current_user
    @question = Question.find(params[:question_id])
    if @user
      @answer = @question.answers.new(answer_params)
      @answer.user_id = @user.id
      if @answer.save
        redirect_to @question
      else
        flash[:error] = "Unable to save!"
      end
    else
      flash[:error] = "Login to post answer!"
    end
  end

  # def show
  #   @question = Question.find(params[:question_id])
  #   @answer = @question.answers.find(params[:id])
  # end

  private
  def answer_params
    params.require(:answer).permit(:description)
  end

end
