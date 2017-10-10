class TweetMailer < ApplicationMailer
  def tweet_mail(tweet)
    @tweet = tweet
    @user = UsersController.user_params

    mail to: @user.email, subject: "つぶやき通知"
  end
end
