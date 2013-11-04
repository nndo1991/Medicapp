# encoding: utf-8
class ContactMessagesController < ApplicationController
	def new
  		@message = ContactMessage.new
  	end

  	def create
  		@message = ContactMessage.new(params[:contact_message])
        if @message.save
            UserMailer.contact_message(@message).deliver
            redirect_to new_contact_message_path, notice: "Tu mensaje ha sido enviado con éxito."
        else
          render :new
        end		
  	end
end
