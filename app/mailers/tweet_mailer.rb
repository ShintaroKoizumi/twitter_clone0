class TweetMailer < ApplicationMailer
  def tweet_mail(tweet)
    @tweet = tweet
    @user = User.find_by(email: params[:session][:email].downcase)

    mail to: @user, subject: "つぶやき通知"
  end
end
