class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(tweet_id: params[:tweet_id])
    redirect_to "/tweets", notice: "#{favorite.tweet.user.name}さんのつぶやきをお気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find(params[:id]).destroy
    redirect_to "/tweets", notice: "#{favorite.tweet.user.name}さんのつぶやきをお気に入り解除しました"
  end
end
