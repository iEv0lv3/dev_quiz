class QuestionsController < ApplicationController
  def index
    @users = User.all
    @questions = LogicQuestion.all
    @answer = UserAnswer.new
  end

  def create
    @answer = UserAnswer.create(answer_params)
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
