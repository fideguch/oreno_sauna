class Report < ApplicationRecord
  default_scope -> { order(created_at: :desc) }

  belongs_to :saunner
  belongs_to :sauna

  has_one_attached :sakatsu_photo

  validates :sauna_rate, presence: true, inclusion: { in: 0..100 }
  validates :water_bath_rate, presence: true, inclusion: { in: 0..100 }
  validates :title, presence: true, length: { in: 1..15 }
  validates :comment, length: { in: 1..75 }, allow_blank: true
end
