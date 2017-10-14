class VolunteerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :institution, :student_id, :career, :email, :password, :lesson_id, :session_id
end
