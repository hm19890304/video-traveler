class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, except: [:index, :show]

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
  end

  def edit
  end

  def update
    if @video.update(video_params)
      redirect_to video_path(@video.id)
    else
      render :edit
    end
  end

  def destroy
    @video.destroy
    redirect_to root_path
  end

  private

  def video_params
    params.require(:video).permit(:title, :explanation, :prefecture_id, :address, :category_id, :movie)
  end

  def set_video
    @video = Video.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
