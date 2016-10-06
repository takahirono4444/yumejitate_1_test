class ProductsController < ApplicationController

  before_action :authenticate_user!

  helper_method :sort_column, :sort_direction#並べ替えのヘルパーメソッドの定義

  def index
    @products = Product.page(params[:page]).per(100).order(sort_column + " " + sort_direction)#並べ替えのメソッドの定義

  end


  def find
    @product = Product.where(first_day: "#{params[:first_day_from]}".."#{params[:first_day_to]}")
@product = Product.where(pay_string: "#{params[:pay_string_from]}".."#{params[:pay_string_to]}")
@product = Product.where(delivery_string: "#{params[:delivery_string_from]}".."#{params[:delivery_string_to]}")
@product = Product.where(delivery_schedule: "#{params[:delivery_schedule_from]}".."#{params[:delivery_schedule_to]}")
@product = Product.where(product_delivery_schedule1: "#{params[:product_delivery_schedule1_from]}".."#{params[:product_delivery_schedule1_to]}")
@product = Product.where(product_delivery_schedule2: "#{params[:product_delivery_schedule2_from]}".."#{params[:product_delivery_schedule2_to]}")
@product = Product.where(product_delivery_schedule3: "#{params[:product_delivery_schedule3_from]}".."#{params[:product_delivery_schedule3_to]}")
@product = Product.where(product_delivery_schedule4: "#{params[:product_delivery_schedule4_from]}".."#{params[:product_delivery_schedule4_to]}")
  end

  def search
  @products = Product.where("concat(member_id, sagyosyo_id, syohin_id, shop, name, tel, email, prefectures, adress1, adress2, free_space1, first_day, delivery_schedule, delivery_string, sub_shop_delivery_string, main_shop_delivery_string, re_product_sub_shop_delivery_string, re_product_main_shop_delivery_string, matsuya_tsuuban, special_topics, product_place1, product_reason1, product_first_day1, product_delivery_schedule1, product_delivery_day1, product_place2, product_reason2, product_first_day2, product_delivery_schedule2, product_delivery_day2, product_place3, product_reason3, product_first_day3, product_delivery_schedule3, product_delivery_day3, product_place4, product_reason4, product_first_day4, product_delivery_schedule4, product_delivery_day4, luggage_goods, product_name, design_no, product_category, product_kind, price, free_space2, pay_string, uchikin_pay_string, staff_id, customer_name, customer_adress, customer_telephone,  visit_reason, search_keywords, show_string_hp, browser, terminal_kind, publish_true, contact_true, customer_email, sex, age) LIKE(?)", "%#{params[:keyword]}%").limit(1000)
  end

  def search1
  @products = Product.where("member_id LIKE(?)", "%#{params[:keyword]}%").limit(1000)
  end

  def new
  end

def create

   @product = Product.create(member_id: params[:member_id], sagyosyo_id: params[:sagyosyo_id], syohin_id: params[:syohin_id], shop: params[:shop], name: params[:name], name_rubi: params[:name_rubi], tel: params[:tel], email: params[:email], post_no: params[:post_no], prefectures: params[:prefectures], adress1: params[:adress1], adress2: params[:adress2], free_space1: params[:free_space1], first_day: params[:first_day], delivery_schedule: params[:delivery_schedule], delivery_string: params[:delivery_string], sub_shop_delivery_string: params[:sub_shop_delivery_string], main_shop_delivery_string: params[:main_shop_delivery_string], re_product_sub_shop_delivery_string: params[:re_product_sub_shop_delivery_string], re_product_main_shop_delivery_string: params[:re_product_main_shop_delivery_string], matsuya_tsuuban: params[:matsuya_tsuuban], special_topics: params[:special_topics], product_place1: params[:product_place1], product_reason1: params[:product_reason1], product_first_day1: params[:product_first_day1], product_delivery_schedule1: params[:product_delivery_schedule1], product_delivery_day2: params[:product_delivery_day2], product_place2: params[:product_place2], product_reason2: params[:product_reason2], product_first_day2: params[:product_first_day2], product_delivery_schedule2: params[:product_delivery_schedule2], product_delivery_day2: params[:product_delivery_day2], product_place3: params[:product_place3], product_reason3: params[:product_reason3], product_first_day3: params[:product_first_day3], product_delivery_schedule3: params[:product_delivery_schedule3], product_delivery_day3: params[:product_delivery_day3], product_place4: params[:product_place4], product_reason4: params[:product_reason4], product_first_day4: params[:product_first_day4], product_delivery_schedule4: params[:product_delivery_schedule4], product_delivery_day4: params[:product_delivery_day4], luggage_goods: params[:luggage_goods], product_name: params[:product_name], design_no: params[:design_no], product_category: params[:product_category], product_kind: params[:product_kind], shitadori: params[:shitadori], uchikin: params[:uchikin], price: params[:price], free_space2: params[:free_space2], pay_string: params[:pay_string], uchikin_pay_string: params[:uchikin_pay_string], staff_id: params[:staff_id], customer_name: params[:customer_name], customer_adress: params[:customer_adress], customer_telephone: params[:customer_telephone], next_expected: params[:next_expected], visit_reason: params[:visit_reason], search_keywords: params[:search_keywords], show_string_hp: params[:show_string_hp], browser: params[:browser], terminal_kind: params[:terminal_kind], hp_impression: params[:hp_impression], sample_price: params[:sample_price], sample_design: params[:sample_design], reason_of_yumejitate: params[:reason_of_yumejitate], bad_impression_hp: params[:bad_impression_hp], want_jewelry: params[:want_jewelry], publish_true: params[:publish_true], contact_true: params[:contact_true], customer_email: params[:customer_email], sex: params[:sex], age: params[:age])
    @picture = Picture.create(image_file_name: params[:image], product_id: @product.id)
    @finish = Finish.create(a_finish: params[:a_finish], product_id: @product.id)
    Product.where(member_id: params[:member_id]).first_or_initialize

    
  
end

def show
  @product = Product.find(params[:id])
  @pictures = @product.pictures
  
end

def destroy
  product = Product.find(params[:id])
  #if tweet.user_id == current_user.id
   product.destroy
  end


def edit
  @product = Product.find(params[:id])
  @pictures = @product.pictures
end

def update
  @product = Product.find(params[:id])
  product = Product.find(params[:id])
  #if tweet.user_id == current_user.id
   product.update(product_params)
  end


  private
  def product_params
    params.repuire(:product).permit(:member_id, :sagyosyo_id, :syohin_id, :shop, :name, :name_rubi, :tel, :email, :post_no, :prefectures, :adress1, :adress2, :free_space1, :first_day, :delivery_schedule, :delivery_string, :sub_shop_delivery_string, :main_shop_delivery_string, :re_product_sub_shop_delivery_string, :re_product_main_shop_delivery_string, :matsuya_tsuuban, :special_topics, :product_place1, :product_reason1, :product_first_day1, :product_delivery_schedule1, :product_delivery_day1, :product_place2, :product_reason2, :product_first_day2, :product_delivery_schedule2, :product_delivery_day2, :product_place3, :product_reason3, :product_first_day3, :product_delivery_schedule3, :product_delivery_day3, :product_place4, :product_reason4, :product_first_day4, :product_delivery_schedule4, :product_delivery_day4, :luggage_goods, :product_name, :design_no, :product_category, :product_kind, :shitadori, :uchikin, :price, :free_space2, :pay_string, :uchikin_pay_string, :staff_id, :customer_name, :customer_adress, :customer_telephone, :next_expected, :visit_reason, :search_keywords, :show_string_hp, :browser, :terminal_kind, :hp_impression, :sample_price, :sample_design, :reason_of_yumejitate, :bad_impression_hp, :want_jewelry, :publish_true, :contact_true, :customer_email, :sex, :age)
  end




 #並び替えの設定
  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "desc"
  end
 
  def sort_column
      Product.column_names.include?(params[:sort]) ? params[:sort] : "first_day"
  end



end
