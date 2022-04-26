class VideosController < ApplicationController
  def index
    @video = Video.all.order('created_at DESC')
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    render :new unless @video.save
  end

  def show
    @video = Video.find(params[:id])    
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    video = Video.find(params[:id])
    if video.update(video_params)
      redirect_to video_path(video.id)
    else
      @video = Video.find(params[:id])
      render :edit
    end
  end

  private

  def video_params
    params.require(:video).permit(:title, :explanation, :prefecture_id, :address, :category_id, :movie)
  end
end
