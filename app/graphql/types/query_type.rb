module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # First describe the field signature:
    field :post, PostType, null: true do
      description "Find a post by ID"
      argument :id, ID, required: true
    end

    # Then provide an implementation:
    def post(id:)
      Post.find(id)
    end
  end
end
