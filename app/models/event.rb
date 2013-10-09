class Event < ActiveRecord::Base
  attr_accessible :date, :description, :name, :person, :place, :time, :type
end
