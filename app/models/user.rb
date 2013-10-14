# encoding: utf-8
class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :username, :email, :password, :password_confirmation

  validates_presence_of :username, message: "Nombre no puede estar en blanco"
  
  
end
