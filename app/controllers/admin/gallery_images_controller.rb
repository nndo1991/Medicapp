# encoding: utf-8
class Admin::GalleryImagesController < Admin::BaseController
	def index
		@images = GalleryImage.order(:created_at)
	end

	def new
		@image = GalleryImage.new
	end

	def edit
		@image = GalleryImage.find(params[:id])
	end

	def create
		@image = GalleryImage.new(params[:gallery_image])
		if @image.save
			redirect_to admin_gallery_images_path, notice: "Imagen creada con exito."
		else
			render :new
		end
	end

	def update
		image = GalleryImage.find(params[:id])
		image.update_attributes(params[:gallery_image])
		redirect_to admin_gallery_images_path, notice: "Imagen actualizada con exito."
	end

	def destroy
		image = GalleryImage.find(params[:id])
		image.destroy
		redirect_to admin_gallery_images_path, notice: "Imagen eliminada con exito."
	end
end
