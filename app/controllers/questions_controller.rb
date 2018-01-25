class QuestionsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @user = User.find_by(id: params[:id])
    @user.questions.create(body: params[:question][:body])
    UserQuestion.email_question(@user, params[:question][:body]).deliver_later
    redirect_to @user
  end

  def destroy
  end
end
