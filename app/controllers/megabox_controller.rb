class MegaboxController < ApplicationController
	
	def index
		@movies = Movie.all
	end

end
