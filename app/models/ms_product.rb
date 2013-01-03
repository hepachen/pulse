class MsProduct < ActiveRecord::Base
  attr_accessible :batch_id, :total
  belongs_to :batch
end
