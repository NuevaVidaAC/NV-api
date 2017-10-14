class Session < ApplicationRecord
	has_many	:lessons
	has_many	:volunteers
	belongs_to	:responsable
end
