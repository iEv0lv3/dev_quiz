class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @user = current_user
    @answer = Answer.new
  end

  def new
  end

  def create
  end

  protected
  def answer_params
  end
end
