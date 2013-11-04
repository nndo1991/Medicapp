class CreateContactMessages < ActiveRecord::Migration
  def change
    create_table :contact_messages do |t|
      t.text :name
      t.text :email
      t.text :phone
      t.text :comments

      t.timestamps
    end
  end
end
