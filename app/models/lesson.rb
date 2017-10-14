class Lesson < ApplicationRecord
	has_many	:volunteers
	has_many	:plans	
	belongs_to 	:session
end
