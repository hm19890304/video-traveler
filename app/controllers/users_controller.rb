class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @video = @user.videos
    @favorites = @user.favorites
    @favorite_videos = @user.favorite_videos
  end

end
