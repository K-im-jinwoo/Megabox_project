class ScreensController < ApplicationController
	def index
		@movies = Movie.all
		@theaters = Theater.all
		@screen = Screen.all
	end
end
