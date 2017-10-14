class LessonSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :date, :start_hour, :end_hour, :session_id
end
