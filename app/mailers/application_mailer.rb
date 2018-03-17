class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout 'mailer'
  
  def posalji_pitanje(email,body)
    @email = email
    @body = body

    mail to: 'darkopmfst@gmail.com', subject: "#{@email} - pitanje"
  end
end
