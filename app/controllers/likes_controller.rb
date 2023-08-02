class LikesController < ApplicationController
  def create

  end

  def destroy

  end

  private

  def find_likes
    @like = like.find(params[:id])
  end

  def like_params
    params.require(:like).permit(:like_id, :like_type)
  end
end