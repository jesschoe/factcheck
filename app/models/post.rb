class Post < ApplicationRecord
  belongs_to :topic
  belongs_to :user
  belongs_to :post
  has_many :posts
end
