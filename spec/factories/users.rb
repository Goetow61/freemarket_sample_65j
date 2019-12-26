FactoryBot.define do

  factory :user do
    nickname              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"0000000"}
    password_confirmation {"0000000"}
    birthday              {"1993-05-02"}
    last_name             {"瀬戸"}
    first_name            {"小菜"}
    last_name_kana        {"セト"}
    first_name_kana       {"ヤス"}
  end

end