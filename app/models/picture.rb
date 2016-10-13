class Picture < ActiveRecord::Base

  belongs_to :product
  has_many :users
  belongs_to :finish


has_attached_file :photo,
                      styles:  { medium: "100x100#", thumb: "50x50#" }
  # :url => "/assets/arts/images/" # 画像保存先のURL先
  # :path => "#{Rails.root}/public/assets/arts/images/"
validates_attachment_content_type :photo,
                                      content_type: ["image/jpg","image/jpeg","image/png"]
# validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }


end
