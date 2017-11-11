class Review < ApplicationRecord
	belongs_to :gsi
	belongs_to :user, optional: true
end
