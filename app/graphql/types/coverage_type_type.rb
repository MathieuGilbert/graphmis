module Types
  CoverageTypeType = GraphQL::ObjectType.define do
    name "CoverageType"
    description "A coverage type"

    field :id, types.Int
    field :name, types.String
    field :monthly_price, types.String
    field :tow_distance, types.Int
  end
end
