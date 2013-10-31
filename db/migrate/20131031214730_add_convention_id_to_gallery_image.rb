class AddConventionIdToGalleryImage < ActiveRecord::Migration
  def change
    add_column :gallery_images, :convention_id, :integer
  end
end
