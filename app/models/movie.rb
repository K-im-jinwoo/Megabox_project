class Movie < ApplicationRecord
	has_one_attached :movie_img
	has_many :screens
	
	# dummy 파일 생성하는 방법
	# 터미널에 rails c -> Movie.set_dummy_datas
	# Movie.destory.all 
end
