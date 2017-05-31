class Location < ApplicationRecord
	has_many :stores
	accepts_nested_attributes_for :stores
end
