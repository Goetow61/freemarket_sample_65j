FactoryBot.define do
  factory :item do
    item_name       {"メガネ"}
    detail          {"良く見えます"}
    status          {"未使用に近い"}
    postage         {1}
    streetadress    {"北海道"}
    days            {2}
    price           {2000}
  end
end


