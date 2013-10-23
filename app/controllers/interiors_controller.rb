class InteriorsController < ApplicationController

	def index
		@convention = Convention.first
	end

	def calendar
		@events = Event.order("time ASC")
	end
end
