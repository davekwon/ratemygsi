class Review < ApplicationRecord
	belongs_to :gsi
	belongs_to :user
end
