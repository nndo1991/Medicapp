# encoding: utf-8
class Admin::BaseController < ActionController::Base
	protect_from_forgery
	layout 'admin'

	before_filter :require_login

private
	def not_authenticated
	  redirect_to admin_login_path, notice: "Por favor inicia sesión"
	end

end