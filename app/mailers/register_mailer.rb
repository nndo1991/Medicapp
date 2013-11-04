class RegisterMailer < ActionMailer::Base
  default from: "Medicapp <congreso.emcs@gmail.com>"

  def welcome_message(message)
		@message = message
		mail to: @message.email, subject: "Registro exitoso"
	end
end
