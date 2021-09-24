module Types
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :post, PostType, null: false
    field :body, String, null: true
  end
end