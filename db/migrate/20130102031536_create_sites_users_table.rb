class CreateSitesUsersTable < ActiveRecord::Migration
  def up
    create_table :sites_users, :id => false do |t|
      t.references :site
      t.references :user
    end
    add_index :sites_users, [:site_id, :user_id]
    add_index :sites_users, [:user_id, :site_id]
  end

  def down
    drop_table :sites_users
  end
end
