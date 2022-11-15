ActiveAdmin.register Movie do
	index do
		selectable_column
		id_column
		
		column :movie_img do |movie|
			if movie.movie_img.attached?
				image_tag url_for(movie.movie_img), class: "small_img"
			else
				"이미지 없음"
			end
		end
		column :movie_title
		column :movie_ge
		column :movie_time
		column :movie_desc
		column :movie_age
		actions
	end
#new, edit
	form do |f|
		f.inputs do
			f.input :movie_img, as: :file
			f.input :movie_title
			f.input :movie_ge
			f.input :movie_time
			f.input :movie_desc
			f.input :movie_age
		end
		f.actions
	end
	
	# show
	show do
		attributes_table do
			row :id
			row :movie_img do |movie|
				if movie.movie_img.attached?
					image_tag url_for(movie.movie_img), class: "small_img"
				else
					"이미지 없음"
				end
			end
			row :movie_title
			row :movie_ge
			row :movie_time
			row :movie_desc
			row :movie_age
		end
	end
end
