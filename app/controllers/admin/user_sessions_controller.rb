# encoding: utf-8
class Admin::UserSessionsController < Admin::BaseController
	skip_before_filter :require_login, except: [:destroy]

  def new
    @user = User.new
  end

  def create
  	if @user = login(params[:username], params[:crypted_password])
      redirect_back_or_to(:admin_events, notice: 'Bienvenido')
    else
      flash.now[:alert] = "Datos incorrectos"
      render action: "new"
    end
  end

  def destroy
  	logout
    redirect_to(:admin_login, notice: 'Cerró sesión')
  end
end
