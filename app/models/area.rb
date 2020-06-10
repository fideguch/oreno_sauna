class Area < ApplicationRecord

	belongs_to :sauna
	validates :area_name, presence: true, length: { in: 1..10 }
end
