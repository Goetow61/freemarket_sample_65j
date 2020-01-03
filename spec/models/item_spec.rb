require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#create' do

    it "item_nameが空では登録不可" do
      item = build(:item, item_name: nil)
      item.valid?
      expect(item.errors[:item_name ]).to include("can't be blank")
    end

    it "detailが空では登録不可" do
      item = build(:item, detail: nil)
      item.valid?
      expect(item.errors[:detail]).to include("can't be blank")
    end

    it "statusが空では登録不可" do
      item = build(:item, status: nil)
      item.valid?
      expect(item.errors[:status]).to include("can't be blank")
    end

    it "postageが空では登録不可" do
      item = build(:item, postage: nil)
      item.valid?
      expect(item.errors[:postage]).to include("can't be blank")
    end

    it "streetadressが空では登録不可" do
      item = build(:item, streetadress: nil)
      item.valid?
      expect(item.errors[:streetadress]).to include("can't be blank")
    end

    it "daysが空では登録不可" do
      item = build(:item, days: nil)
      item.valid?
      expect(item.errors[:days]).to include("can't be blank")
    end

    it "priceが空では登録不可" do
      item = build(:item, price: nil)
      item.valid?
      expect(item.errors[:price]).to include("can't be blank")
    end
  end
end
