module Types
  UserType = GraphQL::ObjectType.define do
    name "User"
    description "A user in the system"

    field :id, types.Int
    field :first_name, types.String
    field :last_name, types.String
    field :email_address, types.String

    field :birth_date do
      type types.Int
      resolve -> (object, args, context) {
        object.birth_date.to_i
      }
    end

    field :membership do
      type MembershipType
      resolve -> (object, args, context) {
        object.membership
      }
    end

    field :address do
      type AddressType
      resolve -> (object, args, context) {
        object.address
      }
    end
  end
end
