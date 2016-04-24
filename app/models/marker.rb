class Marker < ApplicationRecord
  belongs_to :trail

  validates :name, presence: { message: "can't be blank" }
  validates :beacon_number, presence: { message: "can't be blank" }
  validates :trail_id, presence: { message: "can't be blank" }
end
