module Types
  MutationType = GraphQL::ObjectType.define do
    name "Mutation"

    field :updateUserEmail, Mutations::UpdateUserEmailMutation.field
  end
end
