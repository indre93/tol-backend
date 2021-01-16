class DiscussionSerializer < ActiveModel::Serializer
  attributes :id, :topic, :created_at
  has_many :users
  has_many :comments, through: :users
end
