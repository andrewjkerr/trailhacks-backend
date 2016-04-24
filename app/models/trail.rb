class Trail < ApplicationRecord
  has_many :markers

  validates :name, presence: { message: "can't be blank" }
  validates :beacon_number, presence: { message: "can't be blank" }
end
