class UsersController < ApplicationController
  def index
    @questions = LogicQuestion.all
    @user = current_user.id
    @user_answer = UserAnswer.new
  end

  def show
    @questions = LogicQuestion.all
    @user_answer = UserAnswer.new
  end

  def new
    @user_answer = UserAnswer.new
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
    params.require(:answers).permit(:body, :user_id, :username)
  end
end
