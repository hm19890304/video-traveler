class VideosController < ApplicationController
  def new
    @video = Video.new
  end

  def create
    @video = Video.create(video_params)
  end

  private

  def video_params
    params.require(:video).permit(:movie)
  end

end
