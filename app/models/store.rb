class Store < ApplicationRecord
  belongs_to :location, optional: true
end
