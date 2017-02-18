class LesonsController < ApplicationController
	def show
		@leson = Leson.find(params[:id])
	end
	
end
