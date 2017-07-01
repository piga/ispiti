class CommentsController < ApplicationController
#  before_action :logged_in_user, only: [:create, :destroy]
  before_action :find_zadatak, only: [:create, :destroy]

  def create
    @comment = @zadatak.comments.build(comment_params)
    if @comment.save
        flash[:success] = "comment created!"
    else
       #flash[:danger] = @comment.errors.full_messages
    end
    redirect_to @zadatak
  end

  def destroy
  end

  private

    def comment_params
      params.require(:comment).permit(:autor, :content)
    end
    
    def find_zadatak
        @zadatak = Zadatak.find(params[:zadatak_id])
    end
end
