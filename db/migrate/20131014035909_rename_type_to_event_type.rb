class RenameTypeToEventType < ActiveRecord::Migration
  def up
  	rename_column :events, :type, :event_type
  end
end
