class VotesController < ApplicationController
  
  def create
    @question = Question.find(params[:id])

    if @question.votes.create(user_id: current_user.id)
      flash[:notice] =  "Thank you for upvoting!"
      redirect_to(@question)
    else 
      flash[:notice] =  "You have already upvoted this!"
      redirect_to(@question)
    end
  end
end

end
