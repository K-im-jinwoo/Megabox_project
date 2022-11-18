class Screen < ApplicationRecord
	belongs_to :movie
	belongs_to :theater_room
	has_many :ticketings
end
