class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  before_action :set_videos, only: [:show]

  def show
#    @user = User.find(params[:id])
    @favorites = @user.favorites
    @favorite_videos = @user.favorite_videos    
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def set_videos
    @video = current_user.videos
  end
end
