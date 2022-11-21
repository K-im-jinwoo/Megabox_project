class Screen < ApplicationRecord
	belongs_to :movie
	belongs_to :theater_room

	has_many :ticketings, dependent: :destroy
	has_many :users, through: :ticketings
	
end
