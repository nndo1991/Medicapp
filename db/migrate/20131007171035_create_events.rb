class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :type
      t.string :name
      t.string :person
      t.text :description
      t.date :date
      t.time :time
      t.string :place

      t.timestamps
    end
  end
end
