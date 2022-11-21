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
		@theaters = Theater.all
		@screens = Screen.all
	end
	
	def ticket_show
		@movie = Movie.all
		@movie_title = params[:movie_title]
		@th_region = params[:th_region]
		@th_name = params[:th_name]
	end
	def ticket_order
		@seats = Seat.used
	end
end
