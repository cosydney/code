require 'subscribe_to_newsletter_service'

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :notify_user
  after_create :subscribe_to_newsletter#, if: proc { |u| u['newsletter'] == '1' }

  protected

  def notify_user
    UserMailer.welcome(self).deliver_now
  end

  def subscribe_to_newsletter
    SubscribeToNewsletterService.new(self).call
  end
end
