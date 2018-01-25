class UserQuestion < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_question.send_question.subject
  #
  def send_question
    @greeting = "Hi"

    mail to: "to@example.org"
  end
  
  #Maybe I should make self method insted.
  def email_question(user, question)
    @user = user
    @question = question
    mail to: 'darkopmfst@gmail.com', subject: "#{user.name} - pitanje"
  end
end
