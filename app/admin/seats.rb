ActiveAdmin.register Seat do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :seat_name, :seat_use, :theater_room_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:seat_name, :seat_use, :theater_room_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  scope :all
  scope -> {"공개"}, :used ,default: true
  scope -> {"비공개"}, :unused
	
	batch_action :used do |ids|
		@seats = Seat.where(id: ids)
		
		@seats.each do |seat|
			seat.update(seat_use: true)
		end
		flash[:notice] = "자리 예매가 가능합니다."
		redirect_back(fallback_location: root_path)
	end
	
	batch_action :unused do |ids|
		@seats = Seat.where(id: ids)
		
		@seats.each do |seat|
			seat.update(seat_use: false)
		end
		flash[:notice] = "자리 예매가 불가능합니다."
		redirect_back(fallback_location: root_path)
	end
	
end
