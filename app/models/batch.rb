class Batch < ActiveRecord::Base
  attr_accessible :batch_type, :fname
  has_many :ms_txn , :dependent => :destroy
  has_many :ms_offer , :dependent => :destroy
  has_many :ms_product , :dependent => :destroy
  has_many :ms_developer , :dependent => :destroy
end
