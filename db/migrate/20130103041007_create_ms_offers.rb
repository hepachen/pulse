class CreateMsOffers < ActiveRecord::Migration
  def change
    create_table :ms_offers do |t|
      t.integer :total
      t.references :batch , :null=>false

      t.timestamps
    end
  end
end
