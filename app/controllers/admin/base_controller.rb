# encoding: utf-8
class Admin::BaseController < ActionController::Base
	protect_from_forgery
	layout 'admin'

end