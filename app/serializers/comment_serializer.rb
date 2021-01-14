class CommentSerializer < ActiveModel::Serializer
  attributes :id, :username, :content, :created_at
  belongs_to :user
  belongs_to :discussion
end
