class Picture < ActiveRecord::Base

  belongs_to :product
  has_many :users
  belongs_to :finish

  has_attached_file :image,
                      styles:  { medium: "100x100#", thumb: "50x50#" }
  validates_attachment_content_type :image,
                                      content_type: ["image/jpg","image/jpeg","image/png"]



end
