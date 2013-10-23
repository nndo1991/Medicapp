class Admin::EventsController < Admin::BaseController

	def index
		@events = Event.order("id desc")
	end

	def new
		@event = Event.new
	end

	def edit
		@event = Event.find(params[:id])
	end

	def create
		@event = Event.new(params[:event])
		if @event.save
			redirect_to admin_events_path, notice: "Evento creado con exito."
		else
			render :new
		end
	end

	def update
		event = Event.find(params[:id])
		event.update_attributes(params[:event])

		respond_to do |format|
			format.js { render nothing: true }
			format.html {redirect_to admin_events_path, notice: "Evento actualizado con exito."}			
		end		
	end

	def destroy
		event = Event.find(params[:id])
		event.destroy
		redirect_to admin_events_path, notice: "Evento eliminado con exito."
	end
end
