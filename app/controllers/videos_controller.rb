class VideosController < ApplicationController
  def new
    @video = Video.new
  end

  private

  def video_params
    params.require(:video).permit(:movie)
  end

end
