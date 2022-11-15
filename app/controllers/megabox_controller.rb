class MegaboxController < ApplicationController
	def index
		@movies = Movie.all
	end
	
	def movie
		@movies = Movie.all
	end
	

  def show
	  @movie = Movie.find(params[:id])
  end

	def ticket
	end

end
