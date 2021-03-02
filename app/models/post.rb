class Post < ApplicationRecord

  belongs_to :user

  has_many :photos, dependent: :destroy

  # 親から子を作成したり保存する
  accepts_nested_attributes_for :photos

end
