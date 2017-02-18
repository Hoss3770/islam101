class Leson < ApplicationRecord
	has_attached_file :file 
	do_not_validate_attachment_file_type :file
	belongs_to :level 
	
	scope :asc, -> { order(index: :asc) }

end
