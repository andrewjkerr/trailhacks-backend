class MarkerSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :summary, :beacon_number
  belongs_to :trail
end
