class UserMailer < ApplicationMailer
  default from: 'khangltk19032002@gmail.com'
  
  def welcome_email
    mail(to: "yanni19032002@gmail.com", subject: 'Welcome to My Awesome Site')
  end
end
  