class TweetMailer < ApplicationMailer
  def tweet_mail(tweet)
    @tweet = tweet
    @user =

    mail to: user.email, subject: "つぶやき通知"
  end
end
