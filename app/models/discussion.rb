class Discussion < ApplicationRecord
  has_many :comments
  validates :topic, presence: true
end
