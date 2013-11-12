# encoding: utf-8
class Attendant < ActiveRecord::Base
  attr_accessible :address, :city, :convention_id, :country, :email, :facebook, :institution, :interests, :lastname, :name, :phone, :profession, :twitter, :status

  belongs_to :convention

  	validates_presence_of :name, message: "Por favor ingresa tu nombre"
	validates_presence_of :lastname, message: "Por favor ingresa tus apellidos"
	validates_presence_of :email, message: "Por favor ingresa tu correo"
	validates :name, uniqueness: { case_sensitive: false, scope: :email, message: "El correo que ingresaste ya está registrado, por favor ingresa otro" }

	PROFESSION_TYPES = ["Alumno", "Profesor", "Director", "Empresario", "Editorial", "Otro"]
	AREAS_TYPES = ["Conferencias", "Talleres", "Eventos Culturales", "Mesas de diálogos", "Intercambio de experiencias"]
end
