class TweetMailer < ApplicationMailer
  def tweet_mail(tweet)
    @tweet = tweet
    @user = User.find(email: params[:session][:email])

    mail to: @user, subject: "つぶやき通知"
  end
end
