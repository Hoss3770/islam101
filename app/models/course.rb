class Course < ApplicationRecord
	has_many :levels,autosave: true
end
