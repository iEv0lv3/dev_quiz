class QuestionsController < ApplicationController
  def index
    @questions = LogicQuestion.all
  end

  def create
    @answer = Answer.create(answer_params)
    if @answer.save
      flash[:notice] = "Thanks!"
    else
      flash[:notice] = "Invalid entry :-("
      redirect_to :back
    end
  end

  protected
  def answer_params
    params.require(:answers).permit(:body, :username)
  end
end
