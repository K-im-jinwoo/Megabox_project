class Movie < ApplicationRecord
	has_one_attached :movie_img
	has_many :screens
	
	# dummy 파일 생성하는 방법
	# 터미널에 rails c -> Movie.set_dummy_datas
	# Movie.destory.all 
	def self.set_dummy_datas
		20.times do
			Movie.create(
				movie_title: "lorem",
				movie_ge: "lo",
				movie_time: 120,
				movie_age: 12
				)
		end
	end
end
