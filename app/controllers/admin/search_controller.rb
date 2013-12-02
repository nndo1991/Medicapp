# encoding: utf-8
class Admin::SearchController < Admin::BaseController

	def index
		@attendants = Attendant.search_name(params[:query]).paginate(page: params[:page], per_page: 15)
	end

end
