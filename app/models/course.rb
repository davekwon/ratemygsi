class Course < ApplicationRecord
	has_and_belongs_to_many :gsis
	validates :name, presence: true, uniqueness: true
end
