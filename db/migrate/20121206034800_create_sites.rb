class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :sitename
      t.string :supervisor
      t.string :address
      t.string :city
      t.string :zip
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
