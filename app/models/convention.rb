# encoding: utf-8
class Convention < ActiveRecord::Base
  attr_accessible :description, :end_date, :name, :start_date


  validates_presence_of :name, message: "Nombre no puede estar en blanco"

end

