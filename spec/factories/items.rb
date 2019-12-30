FactoryBot.define do
  factory :item do
    user_id { 1 }
    buyer_id { 1 }
    name { "MyString" }
    detail { "MyText" }
    status { 1 }
    postage { false }
    postmethod { 1 }
    days { 1 }
    price { 1 }
    size { "MyString" }
    brand { "MyString" }
    category_tree_id { 1 }
  end
end
