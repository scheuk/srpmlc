class DropSiteRecordsTable < ActiveRecord::Migration
  def up
    drop_table :site_records
  end

  def down
  end
end
