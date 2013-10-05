class Admin::ConventionsController < Admin::BaseController

	def index
		@conventions = Convention.all
	end

	def new
		@convention = Convention.new
	end

	def edit
		@convention = Convention.find(params[:id])
	end

	def create
		@convention = Convention.new(params[:convention])
		if @convention.save
			redirect_to admin_conventions_path, notice: "Jornada creada con exito."
		else
			render :new
		end
	end

	def update
		convention = Convention.find(params[:id])
		convention.update_attributes(params[:convention])

		respond_to do |format|
			format.js { render nothing: true }
			format.html {redirect_to admin_conventions_path, notice: "Jornada actualizada con exito."}			
		end		
	end

	def destroy
		convention = Convention.find(params[:id])
		convention.destroy
		redirect_to admin_conventions_path, notice: "Jornada eliminada con exito."
	end
end
