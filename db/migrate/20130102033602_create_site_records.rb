class CreateSiteRecords < ActiveRecord::Migration
  def change
    create_table :site_records do |t|
      t.references :site
      t.references :user
      t.date :date
      t.integer :tc
      t.integer :nc
      t.integer :br
      t.integer :ea
      t.integer :bd

      t.timestamps
    end
    add_index :site_records, :site_id
    add_index :site_records, :user_id
  end
end
