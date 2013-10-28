class AttendantsController < ApplicationController

	def new
		@attendant = Attendant.new
	end

	def confirm
		@attendant = Attendant.new(params[:attendant])
	end

	def create
		@attendant = Attendant.new(params[:attendant])
		if @attendant.save
			redirect_to root_path, notice: "Tu registro se ha completado."
		else
			render :new
		end
	end
end
