class ScreensController < ApplicationController
	def index
		@movies = Movie.all
		@theaters = Theater.all
		@screen = Screen.all
		@seat = Seat.all
		@num = [1,2,3,4,5,6,7,8]
		@name = ["a","b","c","d","e"]
	end
end
