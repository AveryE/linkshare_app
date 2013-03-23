FactoryGirl.define do
  factory :user do
    username  "bookworm"
    realname "Erica Avery"
    email    "books@somuchtoread.com"
    password "foobars"
    password_confirmation "foobars"
  end
end

