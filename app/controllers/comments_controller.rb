class CommentsController < ApplicationController

  def create
    @music = Music.find(params[:music_id])
    @comment = @music.comments.create(params[:comment].permit(:name, :comment))
  end

  def destroy
    @music = Music.find(params[:music_id])
    @comment = @music.comments.find(params[:id])
    @comment.destroy
    redirect_to music_path(@music)
  end

end
