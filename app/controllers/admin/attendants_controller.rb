# encoding: utf-8
class Admin::AttendantsController < Admin::BaseController

	def index
		@attendants = Attendant.order("id asc").paginate(:page => params[:page], :per_page => 15)
	end

	def show
		@attendant = Attendant.find(params[:id])
	end

	def update
		attendant = Attendant.find(params[:id])
		attendant.update_attributes(params[:attendant])

		respond_to do |format|
			format.js { render nothing: true }
			format.html {redirect_to admin_attendants_path, notice: "Asistencia confirmada con éxito."}			
		end	
	end

	def destroy
		attendant = Attendant.find(params[:id])
		attendant.destroy
		redirect_to admin_attendants_path, notice: "Asistente eliminado con éxito."
	end

end
