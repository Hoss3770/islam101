class LesonsController < ApplicationController
	def show
		@leson = Leson.find(params[:id])
		# authorize! :see, @leson
	end
	
end
