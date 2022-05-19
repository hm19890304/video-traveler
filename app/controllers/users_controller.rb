class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @video = @user.videos.order('created_at DESC')
    @favorites = @user.favorites
    @favorite_videos = @user.favorite_videos
  end

end
