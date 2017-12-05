class Question < ActiveRecord::Base
    belongs_to :user
    
  # Sends question email.
  def self.email_question(user, question)
    UserMailer.send_question(user, question).deliver_now
  end
end
