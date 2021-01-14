class User < ApplicationRecord
  belongs_to :discussion
  has_many :comments
  validates :username, presence: true
  validates :username, uniqueness: true
end
