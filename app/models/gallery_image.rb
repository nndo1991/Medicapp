# encoding: utf-8
class GalleryImage < ActiveRecord::Base
  attr_accessible :image, :link, :text, :title, :convention_id

  belongs_to :convention

  validates_presence_of :image, message: "Por favor escoge una imagen"
  validates_presence_of :title, message: "El título no puede estar vacío"
  validates_presence_of :convention_id, message: "Se debe asociar imagen a una Jornada"

  mount_uploader :image, ImageUploader
end
