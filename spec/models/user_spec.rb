require 'rails_helper'


RSpec.describe User, type: :model do
  describe '#create' do

    it "nicknameが空では登録不可" do
      user = build(:user, nickname: nil)
      # binding.pry
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    # it "nicknameが16文字以上だと登録不可" do
    #   user = build(:user, nickname: "aaaaa aaaaa aaaaaa")
    #   user.valid?
    #   expect(user.errors[:nickname][0]).to include("は15文字以内で入力してください")
    # end

    it "emailが空では登録不可" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    # it "emailが重複すると登録不可" do
    #   create(:user)
    #   another_user = build(:user)
    #   another_user.valid?
    #   expect(another_user.errors[:email]).to include("はすでに存在します")
    # end

    # it "emailが@を含まないと登録不可 " do
    #   user = build(:user, email: "aaaaa")
    #   user.valid?
    #   expect(user.errors[:email][0]).to include("は不正な値です")
    # end

    # it "emailの@の前に文字がないと登録不可 " do
    #   user = build(:user, email: "@aaa")
    #   user.valid?
    #   expect(user.errors[:email][0]).to include("は不正な値です")
    # end

    # it "emailの@の後に文字がないと登録不可" do
    #   user = build(:user, email: "aaaa@")
    #   user.valid?
    #   expect(user.errors[:email][0]).to include("は不正な値です")
    # end


    # it "passwordが空だと登録不可" do
    #   user = build(:user, password: nil)
    #   user.valid?
    #   expect(user.errors[:password]).to include("を入力してください")
    # end


    # it "password_confirmationが空だと登録不可" do
    #   user = build(:user, password_confirmation: "")
    #   user.valid?
    #   expect(user.errors[:password_confirmation]).to include("とPasswordの入力が一致しません")
    # end


    it "passwordが6文字以下だと登録不可" do
      user = build(:user, password: "000000", password_confirmation: "000000")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 7 characters)")
    end


    # it "first_nameが空だと登録不可" do
    #   user = build(:user, first_name: nil)
    #   user.valid?
    #   expect(user.errors[:first_name]).to include("を入力してください")
    # end


    # it "first_nameが16文字以上だと登録不可" do
    #   user = build(:user, first_name: "瀬瀬瀬瀬瀬瀬瀬瀬瀬瀬瀬瀬瀬瀬瀬瀬")
    #   user.valid?
    #   expect(user.errors[:first_name][0]).to include("は15文字以内で入力してください")
    # end


    # it "first_nameに漢字以外が含まれると登録不可 " do
    #   user = build(:user, first_name: "瀬瀬a")
    #   user.valid?
    #   expect(user.errors[:first_name][0]).to include("は不正な値です")
    # end

    # it "last_nameが空だと登録不可" do
    #   user = build(:user, last_name: nil)
    #   user.valid?
    #   expect(user.errors[:last_name]).to include("を入力してください")
    # end

    # it "last_nameが16文字以上だと登録不可" do
    #   user = build(:user, last_name: "瀬瀬瀬瀬瀬瀬瀬瀬瀬瀬瀬瀬瀬瀬瀬瀬")
    #   user.valid?
    #   expect(user.errors[:last_name][0]).to include("は15文字以内で入力してください")
    # end


    # it "last_nameに漢字以外が含まれると登録不可 " do
    #   user = build(:user, l_name_kanji: "瀬瀬a")
    #   user.valid?
    #   expect(user.errors[:l_name_kanji][0]).to include("は不正な値です")
    # end


    # it "first_name_kanaが空だと登録不可" do
    #   user = build(:user, first_name_kana: nil)
    #   user.valid?
    #   expect(user.errors[:first_name_kana]).to include("を入力してください")
    # end


    # it "first_name_kanaが16文字以上だと登録不可" do
    #   user = build(:user, first_name_kana: "アアアアアアアアアアアアアアアア")
    #   user.valid?
    #   expect(user.errors[:first_name_kana][0]).to include("は15文字以内で入力してください")
    # end


    # it "first_name_kanaにカナ以外が含まれると登録不可 " do
    #   user = build(:user, first_name_kana: "トトa")
    #   user.valid?
    #   expect(user.errors[:first_name_kana][0]).to include("は不正な値です")
    # end


    # it "last_name_kanaが空だと登録不可" do
    #   user = build(:user, last_name_kana: nil)
    #   user.valid?
    #   expect(user.errors[:last_name_kana]).to include("を入力してください")
    # end


    # it "last_name_kanaが16文字以上だと登録不可" do
    #   user = build(:user, last_name_kana: "ウアウアウアウアウアウアウアウア")
    #   user.valid?
    #   expect(user.errors[:last_name_kana][0]).to include("は15文字以内で入力してください")
    # end

    # it "last_name_kanaにカナ以外が含まれると登録不可 " do
    #   user = build(:user, last_name_kana: "カナa")
    #   user.valid?
    #   expect(user.errors[:last_name_kana][0]).to include("は不正な値です")
    # end


    # it "birthdayが空だと登録不可" do
    #   user = build(:user, birthday: nil)
    #   user.valid?
    #   expect(user.errors[:birthday]).to include("を入力してください")
    # end

    # it "すべて満たしていれば登録可" do
    #   user = build(:user)
    #   expect(user).to be_valid
    # end


  end
end