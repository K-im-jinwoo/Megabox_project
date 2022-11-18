class Ticketing < ApplicationRecord
	belongs_to :user
	belongs_to :screen
end
