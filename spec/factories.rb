FactoryBot.define do
  factory :billing_profile do
    nickname "MyString"
  end
  factory :card_info do
    card_nickname "MyString"
    card_type "MyString"
    name_on_card "MyString"
    card_number "MyString"
    exp_month "MyString"
    exp_year "MyString"
    ccv "MyString"
    email "MyString"
    birthday "MyString"
  end
  factory :shipping_address do
    first_name "MyString"
    last_name "MyString"
    address_1 "MyString"
    address_2 "MyString"
    city "MyString"
    state "MyString"
    zip_code "MyString"
    country "MyString"
    house_nb "MyString"
    phone "MyString"
    same_as_billing false
  end
  factory :billing_address do
    first_name "MyString"
    last_name "MyString"
    address_1 "MyString"
    address_2 "MyString"
    city "MyString"
    state "MyString"
    zip_code "MyString"
    country "MyString"
    house_nb "MyString"
    phone "MyString"
  end
  factory :merchant_site do
    name "MyString"
    base_url "MyString"
  end
  factory :site_account do
    site "MyString"
    guest false
    email "MyText"
    password "MyString"
    positive_keyword "MyString"
    negative_keyword "MyString"
    style_no "MyString"
    size "MyString"
    early "MyString"
    link "MyString"
    page_monitor "MyString"
    notification_text_no "MyString"
    notification_email "MyText"
  end

end
