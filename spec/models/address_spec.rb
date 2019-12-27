require 'rails_helper'


RSpec.describe Address, type: :model do
  describe '#create' do


  it "last_nameが空では登録不可" do
    tamori = build(:address, last_name: nil)
    tamori.valid?
    expect(tamori.errors[:last_name]).to include("can't be blank")
  end

  it "last_nameに漢字以外が含まれると登録不可 " do
    tamori = build(:address, last_name: "森田クラブ")
    tamori.valid?
    expect(tamori.errors[:last_name][0]).to include("is invalid")
  end

  it "last_nameが16文字以上だと登録不可" do
    tamori = build(:address, last_name: "田森田森田森田森田森田森田森田森")
    tamori.valid?
    expect(tamori.errors[:last_name][0]).to include("is too long (maximum is 15 characters)")
  end

  it "first_nameが空では登録不可" do
    tamori = build(:address, first_name: nil)
    tamori.valid?
    expect(tamori.errors[:first_name]).to include("can't be blank")
  end

  it "first_nameに漢字以外が含まれると登録不可 " do
    tamori = build(:address, first_name: "一義いいとも")
    tamori.valid?
    expect(tamori.errors[:first_name][0]).to include("is invalid")
  end

  it "first_nameが16文字以上だと登録不可" do
    tamori = build(:address, first_name: "一義一義一義一義一義一義一義一義")
    tamori.valid?
    expect(tamori.errors[:first_name][0]).to include("is too long (maximum is 15 characters)")
  end

  it "last_name_kanaが空では登録不可" do
    tamori = build(:address, last_name_kana: nil)
    tamori.valid?
    expect(tamori.errors[:last_name_kana]).to include("can't be blank")
  end

  it "last_name_kanaにカナ以外が含まれると登録不可 " do
    tamori = build(:address, last_name_kana: "カズヨシいいとも")
    tamori.valid?
    expect(tamori.errors[:last_name_kana][0]).to include("is invalid")
  end

  it "last_name_kanaが16文字以上だと登録不可" do
    tamori = build(:address, last_name_kana: "イイトモイイトモイイトモイイトモ")
    tamori.valid?
    expect(tamori.errors[:last_name_kana][0]).to include("is too long (maximum is 15 characters)")
  end


  it "first_name_kanaが空では登録不可" do
    tamori = build(:address, first_name_kana: nil)
    tamori.valid?
    expect(tamori.errors[:first_name_kana]).to include("can't be blank")
  end

  it "first_name_kanaにカナ以外が含まれると登録不可 " do
    tamori = build(:address, first_name_kana: "ブラかずよし")
    tamori.valid?
    expect(tamori.errors[:first_name_kana][0]).to include("is invalid")
  end

  it "first_name_kanaが16文字以上だと登録不可" do
    tamori = build(:address, first_name_kana: "エムステエムステエムステエムステ")
    tamori.valid?
    expect(tamori.errors[:first_name_kana][0]).to include("is too long (maximum is 15 characters)")
  end

  it "postal_codeが空では登録不可" do
    tamori = build(:address, postal_code: nil)
    tamori.valid?
    expect(tamori.errors[:postal_code]).to include("can't be blank")
  end

  it "postal_codeが8文字でなければ登録不可" do
    tamori = build(:address, postal_code: "1234-5678")
    tamori.valid?
    expect(tamori.errors[:postal_code]).to include("is the wrong length (should be 8 characters)")
  end

  it "prefectureが空では登録不可" do
    tamori = build(:address, prefecture: nil)
    tamori.valid?
    expect(tamori.errors[:prefecture]).to include("can't be blank")
  end

  it "cityが空では登録不可" do
    tamori = build(:address, city: nil)
    tamori.valid?
    expect(tamori.errors[:city]).to include("can't be blank")
  end

  it "addressが空では登録不可" do
    tamori = build(:address, address: nil)
    tamori.valid?
    expect(tamori.errors[:address]).to include("can't be blank")
  end
end
end
