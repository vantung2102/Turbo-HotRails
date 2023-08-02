class CommentsController < ApplicationController
  before_action :find_comment, only: [:update, :destory]

  def create
    @comment = Comment.new(comment_params.merge(user_id: 1))
    if @comment.save
      respond_to do |format|
        format.html { redirect_to posts_url, notice: "Comment was successfully created." }
        format.turbo_stream
      end
    end
  end

  def update

  end

  def destroy

  end

  private

  def find_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end