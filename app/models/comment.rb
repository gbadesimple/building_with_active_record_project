class Comment < ApplicationRecord
  validates :commenter, presence: true, length: { maximum: 150 }
  validates :body, presence: true, length: { maximum: 1000 }
  
  belongs_to :user
  belongs_to :post
end
