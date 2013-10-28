class AddStatusToAttendant < ActiveRecord::Migration
  def change
    add_column :attendants, :status, :string
  end
end
