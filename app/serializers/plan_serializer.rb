class PlanSerializer < ActiveModel::Serializer
  attributes :id, :topic, :organization, :subject, :audience, :activities, :material, :description, :lesson_id
end
