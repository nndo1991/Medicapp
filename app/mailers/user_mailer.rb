class UserMailer < ActionMailer::Base
  default from: "Medicapp <congreso.emcs@gmail.com>"

  def contact_message(message)
		@message = message
		mail to: "congreso.emcs@gmail.com", subject: "Visitante en Medicapp"
	end
end
