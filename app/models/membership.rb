class Membership < ApplicationRecord
  has_many :users
  has_one :coverage_type

end
