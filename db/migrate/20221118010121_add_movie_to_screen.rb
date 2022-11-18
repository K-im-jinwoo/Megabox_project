class AddMovieToScreen < ActiveRecord::Migration[5.2]
  def change
    add_reference :screens, :movie, foreign_key: true
	add_reference :ticketings, :screen, foreign_key: true
	add_reference :screens, :theater_room, foreign_key: true
	add_reference :seats, :theater_room, foreign_key: true
	add_reference :theater_rooms, :theater, foreign_key: true
  end
end
