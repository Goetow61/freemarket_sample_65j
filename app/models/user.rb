class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  kanji = /\A[一-龥]+\z/
  kana = /\A([ァ-ン]|ー)+\z/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
 validates :nickname, presence: true, length: { maximum: 15 }
  validates :first_name, presence: true, length: { maximum: 15 }, format: { with: kanji }
  validates :last_name, presence: true, length: { maximum: 15 }, format: { with: kanji }
  validates :first_name_kana, presence: true, length: { maximum: 15 }, format: { with: kana }
  validates :last_name_kana, presence: true, length: { maximum: 15 }, format: { with: kana }
  validates :birthday ,presence: true
  has_one :address
  has_one :card
  has_many :sns_credential

  def self.from_omniauth(auth)
    sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create
    # sns認証したことがあればアソシエーションで取得
    # 無ければemailでユーザー検索して取得orビルド(保存はしない)
    user = sns.user || User.where(email: auth.info.email).first_or_initialize(
      nickname: auth.info.name,
        email: auth.info.email
    )
    # userが登録済みの場合はそのままログインの処理へ行くので、ここでsnsのuser_idを更新しておく
    if user.persisted?
      sns.user = user
      sns.save
    end
    { user: user, sns: sns }
  end
end
