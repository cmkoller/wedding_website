class AddRecordedToRsvps < ActiveRecord::Migration
  def change
    add_column :rsvps, :recorded, :boolean, default: false
  end
end
