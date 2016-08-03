class User < ApplicationRecord

  belongs_to :place

  validates :device_id, presence: true, uniqueness: true

end
