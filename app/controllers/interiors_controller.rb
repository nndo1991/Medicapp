class InteriorsController < ApplicationController

	def index
		@convention = Convention.last
	end

	def calendar
		@events = Event.order("time ASC")
	end

end
