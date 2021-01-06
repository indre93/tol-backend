class DiscussionSerializer < ActiveModel::Serializer
  attributes :id, :topic
  has_many :comments
end
