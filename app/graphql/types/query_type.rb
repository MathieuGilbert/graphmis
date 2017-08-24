Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "Schema's query root"

  field :user do
    type Types::UserType

    argument :id, types.Int, "ID of user to find"

    resolve -> (object, args, context) {
      User.find(args[:id])
    }
  end

  field :users do
    type Types::UserType.to_list_type

    resolve -> (object, args, context) {
      User.all
    }
  end

  field :membership do
    type Types::MembershipType

    argument :number, types.String, "Membership number"

    resolve -> (object, args, context) {
      Membership.find_by(number: args[:number])
    }
  end

  field :memberships do
    type Types::MembershipType.to_list_type

    resolve -> (object, args, context) {
      Membership.all
    }
  end
end
