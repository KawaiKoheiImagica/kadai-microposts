class FavoritesController < ApplicationController
  def create
    micro = Micropost.find(params[:micropost_id])
    current_user.like_yes(micro)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_to current_user
  end

  def destroy
    micro = Micropost.find(params[:micropost_id])
    current_user.like_no(micro)
    flash[:success] = 'お気に入りから削除しました。'
    redirect_to current_user
  end
end
