def created
  @tweet = Tweet.new(tweet_params)

if @tweet.save
  TweetMailer.tweet_mail(@tweet).deliver
  redirect_to '/tweets', notice: 'つぶやきました！！'
else
  redirect_to '/tweets', notice: 'つぶやき失敗！！'
end
end
