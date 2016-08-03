class Message < ActiveRecord::Base
  validates :body, presence: true
  validates :username, presence: true
  def like!
    self.likes += 1
    self.save
  end
end
