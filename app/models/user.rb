class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  kanji = /\A[一-龥]+\z/
  kana = /\A([ァ-ン]|ー)+\z/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true, length: { maximum: 15 }
  validates :first_name, presence: true, length: { maximum: 15 }, format: { with: kanji }
  validates :last_name, presence: true, length: { maximum: 15 }, format: { with: kanji }
  validates :first_name_kana, presence: true, length: { maximum: 15 }, format: { with: kana }
  validates :last_name_kana, presence: true, length: { maximum: 15 }, format: { with: kana }

  

  validates :last_name, :last_name_kana, :first_name_kana, :birthday ,presence: true
  
  has_one :address
  has_one :card
end
