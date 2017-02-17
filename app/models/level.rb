class Level < ApplicationRecord
	has_and_belongs_to_many :users
	belongs_to :course
	has_many :lesons,autosave: true

	scope :asc , -> { order(index: :asc)}

end
