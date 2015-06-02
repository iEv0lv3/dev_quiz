class AnswersController < ApplicationController
  def index
    @user = current_user
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.create(answer_params)
    if @answer.save
      flash[:notice] = "Thanks!"
      redirect_to root_path
    else
      flash[:notice] = "Invalid entry :-("
      redirect_to :back
    end
  end

  protected
  def answer_params
    params.require(:answer).permit(:body, :user_id, :username)
  end
end
