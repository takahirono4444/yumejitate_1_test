class Product < ActiveRecord::Base

 has_many :pictures
 has_many :users
 has_one :finish





# validates :member_id, presence: true
# validates :first_day, presence: true
# validates :shop, presence: true
# validates :name, presence: true


# validate :add_error_sample


# def add_error_sample
#     # nameが空のときにエラーメッセージを追加する
#     if member_id.nil?
#       errors.add(:member_id, ":会員番号に関係するエラーがおきています")
#       #errors[:base] << "モデル全体に関係するエラーを追加"
#     elsif first_day.nil?
#       errors.add(:first_day, ":受注日が入っていません。受注日はyyyy/mm/ddと入れてください")
#     elsif shop.nil?
#       errors.add(:shop, ":受注場所が入っていません。")
#     elsif name.nil?
#       errors.add(:name, ":お客様名が入っていません。")
#     else
#     end
#   end


end
