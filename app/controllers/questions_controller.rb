class QuestionsController < ApplicationController

# Just displaying all questions
  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def new
    @user = current_user
    @question = @user.questions.new
  end

  def create
    @user = current_user
    p "@user"
    @question = @user.questions.new(question_params)
    if @question.save
      redirect_to questions_path
    else
      flash[:error] = "Unable to save the question!"
      redirect_to new_question_path
    end
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
    @answer = Answer.new
    #@votes = @question.votes
    upvotes_count = @question.votes.where("is_upvote = true").count
    downvotes_count = @question.votes.where("is_upvote = false").count
    @vote_diff = upvotes_count - downvotes_count
  end

  private
  def question_params
    params.require(:question).permit(:title, :description)
  end
end
