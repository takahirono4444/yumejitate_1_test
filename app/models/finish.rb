class Finish < ActiveRecord::Base

  belongs_to :product
  has_many :pictures
 has_many :users
end
