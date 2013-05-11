class AddChildToAttendance < ActiveRecord::Migration
  def change
    add_column :attendances, :child_id, :integer
    add_index :attendances, :child_id
  end
end
