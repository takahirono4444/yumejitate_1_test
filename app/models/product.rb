class Product < ActiveRecord::Base

 has_many :pictures
 has_many :users
 has_one :finish


scope :first_day_between, -> from, to {
    if from.present? && to.present?
      where(first_day: from..to, id: params[:id])
    elsif from.present?
      where("first_day >= ?", from)
    elsif to.present?
      where("first_day <= ?", to)
    end
  }


end
