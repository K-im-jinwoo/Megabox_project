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
		@movies = Movie.all
	end
	
	def ticket_show
		@movie = Movie.find(params[:id])
	end

end
