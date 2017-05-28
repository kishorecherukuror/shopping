class Product < ApplicationRecord
	belongs_to :category
	validates :category_id, :name, presence: true
end

