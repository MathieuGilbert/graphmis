module Types
  MembershipType = GraphQL::ObjectType.define do
    name "Membership"
    description "A membership"

    field :id, types.Int
    field :number, types.String
    field :balance_due, types.Float

    field :join_date do
      type types.Int
      resolve -> (object, args, context) {
        object.join_date.to_time.to_i
      }
    end

    field :coverage_type do
      type CoverageTypeType

      resolve -> (object, args, context) {
        object.coverage_type
      }
    end

    field :users do
      type UserType.to_list_type

      resolve -> (object, args, context) {
        object.users
      }
    end
  end
end
