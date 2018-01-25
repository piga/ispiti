# Preview all emails at http://localhost:3000/rails/mailers/user_question
class UserQuestionPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_question/send_question
  def send_question
    UserQuestion.send_question
  end

end
