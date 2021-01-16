class User < ApplicationRecord
  belongs_to :discussion
  has_many :comments
  validates :username, presence: true
  validates_uniqueness_of :username, scope: :discussion_id
end
