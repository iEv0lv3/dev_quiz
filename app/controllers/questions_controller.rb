class QuestionsController < ApplicationController
  def index
    @questions = Hash[Question.all.map { |q| [q.id, q.question] }]
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
