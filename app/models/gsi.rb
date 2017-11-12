class Gsi < ApplicationRecord
	has_and_belongs_to_many :courses
	has_many :reviews
	validates :name, presence: true
end
