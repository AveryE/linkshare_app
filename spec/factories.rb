FactoryGirl.define do
  factory :user do
    username     "bookworm"
    email    "books@somuchtoread.com"
    password "foobar"
    password_confirmation "foobar"
  end
end

