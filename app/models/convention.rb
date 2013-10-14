# encoding: utf-8
class Convention < ActiveRecord::Base
  attr_accessible :description, :end_date, :name, :start_date

  has_many :events, :dependent => :delete_all


  validates_presence_of :name, message: "Nombre no puede estar en blanco"
  validates_presence_of :start_date, message: "Fecha de inicio no puede estar en blanco"
  validates_presence_of :end_date, message: "Fecha de fin no puede estar en blanco"

end

