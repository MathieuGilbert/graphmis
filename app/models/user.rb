class User < ApplicationRecord
  belongs_to :membership
  has_one :address

end
