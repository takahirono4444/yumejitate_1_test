class Product < ActiveRecord::Base

 has_many :pictures
 has_many :users
 has_one :finish


validates :member_id, presence: :true
validates :name, presence: :true
validates :first_day, presence: :true
validates :shop, presence: :true


validate :add_error_sample

def add_error_sample
  if member_id.brank?
    errors[:base]<< "会員番号は必ず入力してください"
  end

  if name.brank?
    errors[:base]<< "お客様名は必ず入力してください"
  end

  if first_day.brank?
    errors[:base]<< "受注日は必ず入力してください"
  end

  if shop.brank?
    errors[:base]<< "受注場所は必ず入力してください"
  end



end
