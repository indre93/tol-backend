class Comment < ApplicationRecord
  belongs_to :discussion
  validates :username, :content, presence: true
end
