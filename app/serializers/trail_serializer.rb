class TrailSerializer < ActiveModel::Serializer
  attributes :id, :name, :beacon_number

  has_many :markers
end
