class FavoritesController < ApplicationController

  def create
    favorite = current_user.favorites.build(video_id: params[:video_id])
    favorite.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    favorite = Favorite.find_by(video_id: params[:video_id], user_id: current_user.id)
    favorite.destroy
    redirect_back(fallback_location: root_path)
  end

  def show
    @favorite = Favorite.where(user_id: current_user.id)
  end

end
