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
    @attachment = params[:question][:attachment]
    if !@attachment.nil? && !@attachment.blank?
          attac = @attachment.tempfile.path
          attac_name = @attachment.original_filename
    else
          attac = ""
          attac_name = ""
    end 
    UserQuestion.email_question(@user, params[:question][:body], attac_name, attac).deliver_later
    redirect_to @user
  end

  def destroy
  end
end
