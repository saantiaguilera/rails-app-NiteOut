class User < ApplicationRecord

  validates :device_id, presence: true, uniqueness: true

end
