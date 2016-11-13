class FinishsController < ApplicationController

  before_action :authenticate_user!

  helper_method :sort_column, :sort_direction#並べ替えのヘルパーメソッドの定義


  def index
  @finishs = Finish.page(params[:page]).per(100).order(sort_column + " " + sort_direction)
  @pictures = @finishs.map(&:pictures).flatten

  respond_to do |format|#csvとエクセルで出力する処理(エンコーディング未処理)
      format.html
      format.csv { send_data @finishs.to_csv }
      format.xls { send_data @finishs.to_csv(col_sep: "\t")}
      end
 end

  def index2
    @finishs = Finish.all.order("first_day DESC")
    @pictures = @finishs.map(&:pictures).flatten

    respond_to do |format|#csvとエクセルで出力する処理(エンコーディング未処理)
      format.html
      format.csv { send_data @finishs.to_csv }
      format.xls { send_data @finishs.to_csv(col_sep: "\t")}
      end
  end

    def find
    @finish = Fnish.where(first_day: "#{params[:first_day_from]}".."#{params[:first_day_to]}")

  end
  def find2
@finish = Fnish.where(pay_string: "#{params[:pay_string_from]}".."#{params[:pay_string_to]}")
end
def find3
@finish = Fnish.where(delivery_string: "#{params[:delivery_string_from]}".."#{params[:delivery_string_to]}")


end
def find4
@finish = Fnish.where(delivery_schedule: "#{params[:delivery_schedule_from]}".."#{params[:delivery_schedule_to]}")

end
def find5
@finish = Fnish.where(product_delivery_schedule1: "#{params[:product_delivery_schedule1_from]}".."#{params[:product_delivery_schedule1_to]}")

end
def find6
@finish = Fnish.where(product_delivery_schedule2: "#{params[:product_delivery_schedule2_from]}".."#{params[:product_delivery_schedule2_to]}")
end
def find7
@finish = Fnish.where(product_delivery_schedule3: "#{params[:product_delivery_schedule3_from]}".."#{params[:product_delivery_schedule3_to]}")
end
def find8
@finish = Fnish.where(product_delivery_schedule4: "#{params[:product_delivery_schedule4_from]}".."#{params[:product_delivery_schedule4_to]}")
  end

  def search
  @finishs = Finish.where("concat(member_id, sagyosyo_id, syohin_id, shop, name, tel, email, prefectures, adress1, adress2, free_space1, first_day, delivery_schedule, delivery_string, sub_shop_delivery_string, main_shop_delivery_string, re_product_sub_shop_delivery_string, re_product_main_shop_delivery_string, matsuya_tsuuban, special_topics, product_place1, product_reason1, product_first_day1, product_delivery_schedule1, product_delivery_day1, product_place2, product_reason2, product_first_day2, product_delivery_schedule2, product_delivery_day2, product_place3, product_reason3, product_first_day3, product_delivery_schedule3, product_delivery_day3, product_place4, product_reason4, product_first_day4, product_delivery_schedule4, product_delivery_day4, luggage_goods, product_name, design_no, product_category, product_kind, price, free_space2, pay_string, uchikin_pay_string, staff_id, customer_name, customer_adress, customer_telephone, customer_appearance, visit_reason, search_keywords, show_string_hp, browser, terminal_kind, publish_true, contact_true, customer_email, sex, age) LIKE(?)", "%#{params[:keyword]}%").limit(100)

  end

  def search1
  @finishs = Finish.where("member_id LIKE(?)", "%#{params[:keyword]}%").limit(1000)
  
  end




def show
  @finish = Finish.find(params[:id])
  @pictures = @finish.pictures if @finish.pictures

end

def destroy
  finish = Finish.find(params[:id])
  #if tweet.user_id == current_user.id
   finish.destroy
  end


def edit
  @finish = Finish.find(params[:id])
  @pictures = @finish.pictures
  
end

def update
  @finish = Finish.find(params[:id])
  @picture = @finish
  @picture = Picture.create(pictures_params)
  @finish.update(finish_params_2)
  end


  private
  def finish_params
    params.require(:finish).permit(:member_id, :sagyosyo_id, :syohin_id, :shop, :name, :name_rubi, :tel, :email, :post_no, :prefectures, :adress1, :adress2, :free_space1, :first_day, :delivery_schedule, :delivery_string, :sub_shop_delivery_string, :main_shop_delivery_string, :re_product_sub_shop_delivery_string, :re_product_main_shop_delivery_string, :matsuya_tsuuban, :special_topics, :product_place1, :product_reason1, :product_first_day1, :product_delivery_schedule1, :product_delivery_day1, :product_place2, :product_reason2, :product_first_day2, :product_delivery_schedule2, :product_delivery_day2, :product_place3, :product_reason3, :product_first_day3, :product_delivery_schedule3, :product_delivery_day3, :product_place4, :product_reason4, :product_first_day4, :product_delivery_schedule4, :product_delivery_day4, :luggage_goods, :product_name, :design_no, :product_category, :product_kind, :shitadori, :uchikin, :price, :free_space2, :pay_string, :uchikin_pay_string, :staff_id, :customer_name, :customer_adress, :customer_telephone, :customer_appearance, :next_expected, :visit_reason, :search_keywords, :show_string_hp, :browser, :terminal_kind, :hp_impression, :sample_price, :sample_design, :reason_of_yumejitate, :bad_impression_hp, :want_jewelry, :publish_true, :contact_true, :customer_email, :sex, :age).merge(user_id: current_user.nickname)
  end

  def finish_params_2
    params.require(:finish).permit(:member_id, :sagyosyo_id, :syohin_id, :shop, :name, :name_rubi, :tel, :email, :post_no, :prefectures, :adress1, :adress2, :free_space1, :first_day, :delivery_schedule, :delivery_string, :sub_shop_delivery_string, :main_shop_delivery_string, :re_product_sub_shop_delivery_string, :re_product_main_shop_delivery_string, :matsuya_tsuuban, :special_topics, :product_place1, :product_reason1, :product_first_day1, :product_delivery_schedule1, :product_delivery_day1, :product_place2, :product_reason2, :product_first_day2, :product_delivery_schedule2, :product_delivery_day2, :product_place3, :product_reason3, :product_first_day3, :product_delivery_schedule3, :product_delivery_day3, :product_place4, :product_reason4, :product_first_day4, :product_delivery_schedule4, :product_delivery_day4, :luggage_goods, :product_name, :design_no, :product_category, :product_kind, :shitadori, :uchikin, :price, :free_space2, :pay_string, :uchikin_pay_string, :staff_id, :customer_name, :customer_adress, :customer_telephone, :customer_appearance, :next_expected, :visit_reason, :search_keywords, :show_string_hp, :browser, :terminal_kind, :hp_impression, :sample_price, :sample_design, :reason_of_yumejitate, :bad_impression_hp, :want_jewelry, :publish_true, :contact_true, :customer_email, :sex, :age).merge(edit_staff_id: current_user.nickname)

  end

  def pictures_params
    params.require(:finish).permit(:photo).merge(finish_id: @finish.id)
  end

 #並び替えの設定
  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "desc"
  end
 
  def sort_column
      Finish.column_names.include?(params[:sort]) ? params[:sort] : "first_day"
  end
end
