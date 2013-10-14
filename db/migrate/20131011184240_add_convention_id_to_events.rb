class AddConventionIdToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :convention_id, :integer
  end
end
