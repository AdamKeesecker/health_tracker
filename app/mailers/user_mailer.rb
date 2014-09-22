class UserMailer < ActionMailer::Base
default from: "TheDoctor@SpyMD.com"

  def get_token_email(user)
    @url = "CHANGE THIS AT APP/MAILERS/USER_MAILER.RB"
    mail(to: user.email, subject: "SpyMD is requesting your fitbit token!")
  end
end
 
