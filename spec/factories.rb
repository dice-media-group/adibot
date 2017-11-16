FactoryBot.define do
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
