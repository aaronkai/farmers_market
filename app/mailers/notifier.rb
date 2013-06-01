class Notifier < ActionMailer::Base
  default :from => "notifier@farmersfeed.us"
  
  def presence_message(email, presence)
    @presence = presence
    mail(to: email, subject: presence.message)
  end
end