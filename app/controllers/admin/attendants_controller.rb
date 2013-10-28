class Admin::AttendantsController < Admin::BaseController

	def index
		@attendants = Attendant.all
	end

	def show
		@attendant = Attendant.find(params[:id])
	end

	def destroy
		attendant = Attendant.find(params[:id])
		attendant.destroy
		redirect_to admin_attendants_path, notice: "Asistente eliminado con exito."
	end

end
