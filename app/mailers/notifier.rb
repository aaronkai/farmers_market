class Notifier < ActionMailer::Base
  default :from => "notifier@farmersfeed.us"
  
  def presence_message(email, presence)
    mail(to: email, subject: presence.message)
  end
end