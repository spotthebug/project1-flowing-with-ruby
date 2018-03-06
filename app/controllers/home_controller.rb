class HomeController < ApplicationController
  def index
    @questions = Question.all.order(created_at: :desc).limit(5)
  end

end
