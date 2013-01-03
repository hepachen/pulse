class CreateMsDevelopers < ActiveRecord::Migration
  def change
    create_table :ms_developers do |t|
      t.string :country
      t.integer :total
      t.references :batch,  :null=>false

      t.timestamps
    end
  end
end
