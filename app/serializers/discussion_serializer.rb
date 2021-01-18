class DiscussionSerializer < ActiveModel::Serializer
  attributes :id, :topic, :created_at
  has_many :comments
end
