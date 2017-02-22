class RegistrationsController < Devise::RegistrationsController
	def create
		super
		courses = Course.all
		courses.each do |c|
			@user.levels << c.levels.where(index: 0)
			@user.save!
		end
	end
end