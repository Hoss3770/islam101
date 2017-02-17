class Leson < ApplicationRecord
	has_attached_file :file
	belongs_to :level 


	scope :asc, -> { order(index: :asc) }

end
