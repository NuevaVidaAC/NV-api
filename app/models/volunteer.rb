class Volunteer < ApplicationRecord
	belongs_to :lesson
	belongs_to :session
end
