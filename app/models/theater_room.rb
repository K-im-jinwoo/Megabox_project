class TheaterRoom < ApplicationRecord
	has_many: theaters
	has_many: seats
end
