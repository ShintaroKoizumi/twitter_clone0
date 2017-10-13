class TweetMailer < ApplicationMailer
  def tweet_mail(tweet)
    @tweet = tweet


    mail to: @tweet.user.email, subject: "つぶやき通知"
  end
end
