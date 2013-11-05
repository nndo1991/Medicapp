# encoding: utf-8
class AttendantsController < ApplicationController

	def new
		@attendant = Attendant.new
	end

	def correct
		@attendant = Attendant.new(params[:attendant])
	end

	def confirm
		@attendant = Attendant.new(params[:attendant])
	end

	def create
		@attendant = Attendant.new(params[:attendant])
		if params[:edit_data]
			render :correct
		else
			if @attendant.save
				redirect_to new_attendant_path, notice: "Tu registro se ha completado."
				RegisterMailer.welcome_message(@attendant).deliver
			else
				render :new
			end
		end
	end
end
