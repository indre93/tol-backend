class CommentSerializer < ActiveModel::Serializer
  attributes :id, :discussion_id, :username, :content
  belongs_to :discussion
end
