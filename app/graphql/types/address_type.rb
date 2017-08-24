module Types
  AddressType = GraphQL::ObjectType.define do
    name "Address"
    description "A user's address"

    field :id, types.Int
    field :address, types.String
    field :city, types.String
    field :province, types.String
    field :postal_code, types.String
  end
end
