class TweetsController < ApplicationController
  before_action :set_tweet, only: %i[edit update destroy]
  before_action :callback_login, only: %i[index edit show]
  def index
    @tweets = Tweet.all.reverse_order
  end

  def new; end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      TweetMailer.tweet_mail(@tweet).deliver
      redirect_to '/tweets', notice: 'つぶやきました！！'
    else
      redirect_to '/tweets', notice: 'つぶやき失敗！！'
    end
  end

  def edit; end

  def update
    if @tweet.update(tweet_params)
      redirect_to '/tweets', notice: '編集しました！!'
    else
      redirect_to '/tweets', notice: '編集失敗！！'
    end
  end

  def destroy
    @tweet.destroy
    redirect_to '/tweets', notice: '削除しました！'
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content)
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
