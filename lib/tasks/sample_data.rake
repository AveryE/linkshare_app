namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(username: "Example User",
                 realname: "Example",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      username  = Faker::Username.username
      realname = Faker::Realname.realname
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(username: username,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
