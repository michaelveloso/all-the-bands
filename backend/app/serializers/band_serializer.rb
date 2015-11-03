class BandSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :name, :year_formed, :year_disbanded, :website
end
