class ProductFindForm
  include ActiveModel::Model

  attr_accessor :first_day_from, :first_day_to, :delivery_string_from, :delivery_string_to, :delivery_schedule_from, :delivery_schedule_to, :product_delivery_schedule1_from, :product_delivery_schedule1_to, :product_delivery_schedule2_from, :product_delivery_schedule2_to, :product_delivery_schedule3_from, :product_delivery_schedule3_to, :product_delivery_schedule4_from, :product_delivery_schedule4_to
end