class Attendant < ActiveRecord::Base
  attr_accessible :address, :city, :convention_id, :country, :email, :facebook, :institution, :interests, :lastname, :name, :phone, :profession, :twitter, :status

  belongs_to :convention
end
