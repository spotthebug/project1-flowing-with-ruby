class VotesController < ApplicationController
  
  # def new
  #   @user = current_user
  #   @question = Question.find(params[:question_id])
  # end
  
  def upvote
    @user = current_user
    @question = Question.find(params[:question_id])
    @vote = @question.votes.new(user: @user)
    @vote.is_upvote = true
    if @vote.save
      redirect_to(@question)
    else 
      flash[:notice] =  "You have already voted!"
      redirect_to(@question)
    end
  end
  
  def downvote
    @user = current_user
    @question = Question.find(params[:question_id])
    @vote = @question.votes.new(user: @user)
    @vote.is_upvote = false
    if @vote.save
      redirect_to(@question)
    else 
      flash[:notice] =  "You have already voted!"
      redirect_to(@question)
    end
  end
end

