class CommentsController < ApplicationController
#  before_action :logged_in_user, only: [:create, :destroy]
  before_action :find_zadatak, only: [:show, :create, :destroy]

  def show
    @comments = @zadatak.comments
    respond_to do |format|
      format.html
      format.json {render json: @comments}
    end
  end

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
    @comment= @zadatak.comments.find_by(id: params[:id])
    if @comment
        @comment.destroy
        flash[:success] = "Micropost deleted"
    else
       flash[:danger] = 'No such comment or zadatak' 
    end
    redirect_to request.referrer || @zadatak
  end

  private

    def comment_params
      params.require(:comment).permit(:autor, :content)
    end
    
    def find_zadatak
        @zadatak = Zadatak.find(params[:zadatak_id])
    end
end
