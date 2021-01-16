class Discussion < ApplicationRecord
  has_many :users
  has_many :comments, through: :users
  validates :topic, presence: true
end
