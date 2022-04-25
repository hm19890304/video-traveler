class VideosController < ApplicationController
  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    render :new unless @video.save
  end

  private

  def video_params
    params.require(:video).permit(:title, :explanation, :prefecture_id, :address, :category_id, :movie)
  end

end
