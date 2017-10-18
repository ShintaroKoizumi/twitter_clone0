class TweetsController < ApplicationController
  before_action :set_tweet, only: [:edit, :update, :destroy]
  before_action :callback_login, only: [:index, :edit, :show]

  def index
    @tweets = Tweet.all.reverse_order
    @tweet_new = Tweet.new
    @user = current_user
  end

  def new; end

  def create
    @tweet_new = Tweet.new(tweets_params)
    @tweet_new.user_id = current_user.id
    if @tweet_new.save
      TweetMailer.tweet_mail(@tweet_new).deliver
      redirect_to '/tweets', notice: 'つぶやきました！！'
    else
      redirect_to '/tweets', notice: 'つぶやき失敗！！'
    end
  end

  def edit; end

  def update
    if @tweet.update(tweets_params)
      redirect_to '/tweets', notice: '編集しました！!'
    else
      redirect_to '/tweets', notice: '編集失敗！！'
    end
  end

  def destroy
    @tweet.destroy
    redirect_to '/tweets', notice: '削除しました！'
  end

  def confirm
    @favorites = current_user.favorites.all.reverse_order
  end

  private

  def tweets_params
    params.require(:tweet).permit(:content, :user_id, :picture)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def callback_login
    if !logged_in?
      render 'sessions/new'
    end
  end
end
