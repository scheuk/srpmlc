class AddIDsToChildren < ActiveRecord::Migration
  def change
    add_column :children, :site_id, :integer
    add_column :children, :user_id, :integer
    add_index :children, :user_id
    add_index :children, :site_id
  end
end
