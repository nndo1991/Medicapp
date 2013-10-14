# encoding: utf-8
class Admin::UsersController < Admin::BaseController
	def edit
		@user = User.find(params[:id])
	end

	def update
		user = User.find(params[:id])
		user.update_attributes(params[:user])

		respond_to do |format|
			format.js { render nothing: true }
			format.html {redirect_to edit_admin_user_path(user.id), notice: "Usuario actualizado con éxito."}			
		end		
	end
end
