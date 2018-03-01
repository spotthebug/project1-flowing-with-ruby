class QuestionsController < ApplicationController

  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to questions_path
    else
      flash[:error] = "Unable to save question"
      redirect_to new_question_path
    end
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
    @answer = Answer.new
  end

  private
  def question_params
    params.require(:question).permit(:title, :description, :user_id)
  end
end
