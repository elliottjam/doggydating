FactoryGirl.define  do
  factory :user do
    email "johnnyrocket@gmail.com"
    username "jrock"
    first_name "Johnny"
    last_name "Rocket"
    password "foobar"
    password_confirmation "foobar"
  end
end