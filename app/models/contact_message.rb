class ContactMessage < ActiveRecord::Base
  attr_accessible :comments, :email, :name, :phone

  	validates_presence_of :name, message: "Ingresa tu nombre"
	validates_presence_of :email, message: "Ingresa tu correo"
	validates_presence_of :comments, message: "Ingresa tus comentarios"

end
