class VideosController < ApplicationController
  def new
    @video = Video.new
  end

  def create
    @video = Video.create(video_params)
  end

  private

  def video_params
    params.require(:video).permit(:title, :explanation, :prefecture_id, :category_id, :movie)
  end

end
