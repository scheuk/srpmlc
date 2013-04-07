class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.date :date
      t.integer :session
      t.time :time

      t.timestamps
    end
  end
end
