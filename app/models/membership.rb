class Membership < ApplicationRecord
  has_many :users
  belongs_to :coverage_type

end
