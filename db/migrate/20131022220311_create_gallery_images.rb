class CreateGalleryImages < ActiveRecord::Migration
  def change
    create_table :gallery_images do |t|
      t.text :image
      t.string :text
      t.text :link
      t.string :title

      t.timestamps
    end
  end
end
