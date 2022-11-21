class Seat < ApplicationRecord
	belongs_to :theater_room
	
	validates :seat_use, exclusion: { in: [nil] }
	
	scope :used, -> { Seat.where(seat_use: true) }
	scope :unused, -> { Seat.where(seat_use: false) }
end
