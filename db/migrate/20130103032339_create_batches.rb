class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.string :fname , :null=>false , :index=>true
      t.string :batch_type  , :null=>false, :limit=>40 
      t.timestamps
    end
  end
end
