class MsDeveloper < ActiveRecord::Base
  attr_accessible :batch_id, :country, :total
  belongs_to :batch
end
