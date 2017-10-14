class SessionSerializer < ActiveModel::Serializer
  attributes :id, :date, :start_hour, :end_hour, :location, :responsable_id
end
