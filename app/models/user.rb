class User < ApplicationRecord
  belongs_to :membership
  belongs_to :address

end
