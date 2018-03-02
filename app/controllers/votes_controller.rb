class VotesController < ApplicationController
  
  # def new
  #   @user = current_user
  #   @question = Question.find(params[:question_id])
  # end
  
  def create
    @user = current_user
    @question = Question.find(params[:question_id])
    if @question.votes.create(user: @user)
      flash[:notice] =  "Thank you for upvoting!"
      redirect_to(@question)
    else 
      flash[:notice] =  "You have already upvoted this!"
      redirect_to(@question)
    end
  end
end

