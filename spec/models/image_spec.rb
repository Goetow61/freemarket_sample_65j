require 'rails_helper'

RSpec.describe Image, type: :model do
  describe '#create' do

    it "srcが空では登録不可" do
      item = build(:image, src: nil)
      item.valid?
      expect(item.errors[:src ]).to include("can't be blank")
    end
  end
end
