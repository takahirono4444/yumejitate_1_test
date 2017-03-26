class Product < ActiveRecord::Base

 has_many :pictures
 has_many :users
 has_one :finish


validates_uniqueness_of :member_id

#必須項目
validates :member_id, presence: true, format: { with: /\A[!-~]+\z/i, :message => "「会員番号」は必須入力項目です。「会員番号」は半角で入力してください。 "}
validates :name, presence: {:message => "「名前」が入力されていません。「名前」は必須入力項目です"}
validates :first_day, presence: true, format: { with: /\A[!-~]+\z/i, :message => "「受注日」は必須入力項目です。「受注日」は半角で「2020/01/01」というように入力してください。"  }
validates :shop, presence: {:message => "「受注場所」が入力されていません。「受注場所」は必須入力項目です"}
validates :delivery_schedule, presence: true, format: { with: /\A[!-~]+\z/i, :message => "「納期」は半角で「2020/01/01」というように入力してください。「納期」は必須項目です。", allow_blank: true }

#数字のみ
validates :shitadori, numericality: { only_integer: true, :message => "「下取り」が間違っています。「下取り」数字のみ入力できます。" }
validates :price, numericality: { only_integer: true, :message => "「最終金額」が間違っています。「最終金額」数字のみ入力できます。" }
validates :uchikin, numericality: { only_integer: true, :message => "「内金」が間違っています。「内金」数字のみ入力できます。" }


#日付と半角
validates :sagyosyo_id, format: { with: /\A[!-~]+\z/i, :message => "「作業書番号」が間違っています。「作業書番号」は半角で入力してください。", allow_blank: true }
validates :syohin_id, format: { with: /\A[!-~]+\z/i, :message => "「商品番号」が間違っています。「商品番号」は半角で入力してください。", allow_blank: true }
validates :tel, format: { with: /\A[!-~]+\z/i, :message => "「電話番号」が間違っています。「電話番号」は半角で入力してください。", allow_blank: true }
validates :email, format: { with: /\A[!-~]+\z/i, :message => "が間違っています。「email」は半角で入力してください。", allow_blank: true }
validates :delivery_schedule, format: { with: /\A[!-~]+\z/i, :message => "「納期」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :delivery_string, format: { with: /\A[!-~]+\z/i, :message => "「納品日」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :sub_shop_delivery_string, format: { with: /\A[!-~]+\z/i, :message => "「本社→現場/品物到着日」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :main_shop_delivery_string, format: { with: /\A[!-~]+\z/i, :message => "「現場→本社/品物到着日」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :re_product_main_shop_delivery_string, format: { with: /\A[!-~]+\z/i, :message => "「再加工売場→本社/品物到着日」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :re_product_sub_shop_delivery_string, format: { with: /\A[!-~]+\z/i, :message => "「再加工本社→売場/品物到着日」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :matsuya_tsuuban, format: { with: /\A[!-~]+\z/i, :message => "「通番-※松屋のみ」は半角で入力してください。", allow_blank: true }
validates :product_first_day1, format: { with: /\A[!-~]+\z/i, :message => "「出し日1」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :product_delivery_schedule1, format: { with: /\A[!-~]+\z/i, :message => "「受取日1」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :product_delivery_day1, format: { with: /\A[!-~]+\z/i, :message => "「ライム納期1」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :product_first_day2, format: { with: /\A[!-~]+\z/i, :message => "「出し日2」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :product_delivery_schedule2, format: { with: /\A[!-~]+\z/i, :message => "「受取日2」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :product_delivery_day2, format: { with: /\A[!-~]+\z/i, :message => "「ライム納期2」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :product_first_day3, format: { with: /\A[!-~]+\z/i, :message => "「出し日3」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :product_delivery_schedule3, format: { with: /\A[!-~]+\z/i, :message => "「受取日3」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :product_delivery_day3, format: { with: /\A[!-~]+\z/i, :message => "「ライム納期3」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :product_first_day4, format: { with: /\A[!-~]+\z/i, :message => "「出し日4」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :product_delivery_schedule4, format: { with: /\A[!-~]+\z/i, :message => "「受取日4」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :product_delivery_day4, format: { with: /\A[!-~]+\z/i, :message => "「ライム納期4」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :pay_string, format: { with: /\A[!-~]+\z/i, :message => "「入金日」が間違っています。「入金日」は半角で「2020/01/01」というように入力してください。", allow_blank: true }
validates :uchikin_pay_string, format: { with: /\A[!-~]+\z/i, :message => "「内金入金日」が間違っています。「内金入金日」は半角で「2020/01/01」というように入力してください。", allow_blank: true }




  def price=(value)
    value.tr!('０-９', '0-9') if value.is_a?(String)
    super(value)
    if "".empty?
      price = 0
    end
  end
  def shitadori=(value)
    value.tr!('０-９', '0-9') if value.is_a?(String)
    super(value)
    if shitadori == []
      price << 0
    end
  end
  def uchikin=(value)
    value.tr!('０-９', '0-9') if value.is_a?(String)
    super(value)
    if uchikin == []
      price << 0
    end
  end


def self.to_csv(options = {})#csvとエクセルで出力する処理(エンコーディング未処理)
    CSV.generate(options) do |csv|
      csv << csv_column_names
      all.each do |product|
        csv << product.csv_column_values
      end
    end
  end

def self.csv_column_names
    ["id", "会員番号", "作業書No ", "商品番号", "名前", "フリガナ", "電話番号", "E-mail", "郵便番号", "都道府県", "住所1", "住所2", "備考欄", "削除フラグ", "受注日/※必須入力", "受注場所", "納期/出来上り予定日/※必須入力", "納品日/お客様お渡し日", "本社→現場/品物到着日", " 現場→本社/品物到着日", "再加工売場→本社/品物到着日", " 再加工本社→売場/品物到着日", "通番-※松屋のみ", " 特記事項", " 加工出先1", "加工内容1", "出し日1", "ﾗｲﾑ納期1", "受取日1", " 加工出先2", "加工内容2", " 出し日2", " ﾗｲﾑ納期2", " 受取日2", "加工出先3", "加工内容3", " 出し日3", " ﾗｲﾑ納期3", "受取日3", "加工先4", "加工内容4", "出し日4", "ﾗｲﾑ納期4", "受取日4", "預かり品詳細", "受注商品名", " ﾃﾞｻﾞｲﾝNo．", "受注分類", "商品の種類", " 下取価格", "内金額", "差額-ご請求額", "備考", "入金日", "内金入金日", "担当者名", " お客様名", "お客様住所", "お客様ご連絡先", " お客様-ご来店の様子-※必須入力", "次回の期待が持てる方", "ｱﾝｹｰﾄ-ご来店のきっかけ", "ｱﾝｹｰﾄ-検索ｷｰﾜｰﾄﾞ", "ｱﾝｹｰﾄ-HP閲覧の時期-?日前", "ｱﾝｹｰﾄ-検索ｴﾝｼﾞﾝ", " ｱﾝｹｰﾄ-端末の種類", " ｱﾝｹｰﾄ-HPの印象", "ｱﾝｹｰﾄ-ｵｰﾀﾞｰｻﾝﾌﾟﾙ価格", "ｱﾝｹｰﾄ-ｵｰﾀﾞｰｻﾝﾌﾟﾙﾃﾞｻﾞｲﾝ", "ｱﾝｹｰﾄ-夢仕立を選んだ理由", "ｱﾝｹｰﾄ-HPの気になった所", " ｱﾝｹｰﾄ-今後欲しいｼﾞｭｴﾘｰ", " ｱﾝｹｰﾄ-掲載許可", "ｱﾝｹｰﾄ-ﾒｰﾙ連絡許可", "ｱﾝｹｰﾄ-ﾒｰﾙｱﾄﾞﾚｽ", " ｱﾝｹｰﾄ-性別", " ｱﾝｹｰﾄ-年代"]
  end

  def csv_column_values
    [id, member_id, sagyosyo_id, syohin_id, name, name_rubi, tel, email, post_no, prefectures, adress1, adress2, free_space1, delete_box, first_day, shop, delivery_schedule, delivery_string, sub_shop_delivery_string, main_shop_delivery_string, re_product_main_shop_delivery_string, re_product_sub_shop_delivery_string, matsuya_tsuuban, special_topics, product_place1, product_reason1, product_first_day1, product_delivery_schedule1, product_delivery_day1, product_place2, product_reason2, product_first_day2, product_delivery_schedule2, product_delivery_day2, product_place3, product_reason3, product_first_day3, product_delivery_schedule3, product_delivery_day3, product_place4, product_reason4, product_first_day4, product_delivery_schedule4, product_delivery_day4, luggage_goods, product_name, design_no, product_category, product_kind, shitadori, uchikin, price, free_space2, pay_string, uchikin_pay_string, staff_id, customer_name, customer_adress, customer_telephone, customer_appearance, next_expected, visit_reason, search_keywords, show_string_hp, browser, terminal_kind, hp_impression, sample_price, sample_design, reason_of_yumejitate, bad_impression_hp, want_jewelry, publish_true, contact_true, customer_email, sex, age]


end


end
