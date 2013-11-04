class ContactMessage < ActiveRecord::Base
  attr_accessible :comments, :email, :name, :phone

  	validates_presence_of :name, message: "Por favor ingresa tu nombre"
	validates_presence_of :email, message: "Por favor ingresa tu correo"
	validates_presence_of :comments, message: "Por favor ingresa tus comentarios"

end
