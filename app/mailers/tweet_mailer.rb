class TweetMailer < ApplicationMailer
  def tweet_mail(tweet)
    @tweet = tweet
    @user = User

    mail to: User.email, subject: "つぶやき通知"
  end
end
