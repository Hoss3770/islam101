class PagesController < ApplicationController
  def view
  	@users = User.all
  end
end
