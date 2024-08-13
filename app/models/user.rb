class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  
  after_create :send_welcome_email

  private

  def send_welcome_email
    UserMailer.with(user: self).welcome_email.deliver_later
  end
end
