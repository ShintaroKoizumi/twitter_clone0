class TweetMailer < ApplicationMailer
  def tweet_mail(tweet)
    @tweet = tweet

    mail to: User.find(:email), subject: "つぶやき通知"
  end
end
