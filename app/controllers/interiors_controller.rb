class InteriorsController < ApplicationController
	include InteriorsHelper

	def index
		@convention = Convention.last
	end

	def show
		@event = Event.find(params[:id])
	end

	def calendar
		@events = Event.order("time ASC")
		respond_to do |format|
	      format.html
	      format.json { render :json => events_array(@events) }
    	end
	end

end
