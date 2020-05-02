class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 10 }
  validates :email, presence: true, length: {maximum: 150 }

  has_many :posts, dependent: :destroy
  has_many :comments
end
