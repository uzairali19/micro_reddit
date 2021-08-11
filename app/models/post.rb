class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, uniqueness: true, length: { in: 5..50 }
  validates :user_id, presence: true, uniqueness: true

  belongs_to :user
  has_many :comments
end
