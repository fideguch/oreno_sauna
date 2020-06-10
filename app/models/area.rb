class Area < ApplicationRecord
	default_scope -> { order(created_at: :desc) }

	belongs_to :sauna
	validates :area_name, presence: true, length: { in: 1..10 }
end
