module Mutations
  UpdateUserEmailMutation = GraphQL::Relay::Mutation.define do
    name "UpdateUserEmail"

    input_field :user_id, types.ID
    input_field :email_address, types.String

    return_field :user, Types::UserType

    resolve -> (object, inputs, context) {
      user = User.find(inputs[:user_id])
      user.email_address = inputs[:email_address]
      user.save!

      response = {
        user: user
      }
    }
  end
end
