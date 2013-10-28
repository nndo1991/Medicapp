class CreateAttendants < ActiveRecord::Migration
  def change
    create_table :attendants do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :twitter
      t.string :facebook
      t.string :phone
      t.text :address
      t.string :city
      t.string :country
      t.string :profession
      t.text :institution
      t.text :interests
      t.integer :convention_id

      t.timestamps
    end
  end
end
