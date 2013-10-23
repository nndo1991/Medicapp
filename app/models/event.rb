class Event < ActiveRecord::Base
  attr_accessible :date, :description, :name, :person, :place, :time, :event_type, :convention_id

  belongs_to :convention

  validates_presence_of :name, message: "Nombre no puede estar en blanco"
  validates_presence_of :event_type, message: "Tipo no puede estar en blanco"
  validates_presence_of :date, message: "Fecha no puede estar en blanco"
  validates_presence_of :time, message: "Hora no puede estar en blanco"
  validates_presence_of :convention_id, message: "Jornada no puede estar en blanco"

  def start_time
    date
  end

end
