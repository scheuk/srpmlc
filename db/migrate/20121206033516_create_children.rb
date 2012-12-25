class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :first
      t.string :last
      t.integer :age

      t.timestamps
    end
  end
end
