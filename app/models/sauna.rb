class Sauna < ApplicationRecord
	default_scope -> { order(created_at: :desc) }

	before_create :default_picture
	has_one_attached :picture

	include SearchFacility

	# photoのデフォルト画像を設定
	def default_picture
		if !self.picture.attached?
			self.picture.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'noimage.png')), filename: 'noimage.png', content_type: 'image/png')
		end
	end

	#saunaモデルのveiwからreportのデータにアクセスする際に必要。
	has_many :report

	has_one :area
	accepts_nested_attributes_for :area

	VALID_PHONE_REGEX = /\A\d{10}$|^\d{11}\z/
	validates :sauna_name, uniqueness: true, presence: true, length: { in: 1..50 }
	validates :address, uniqueness: true, length: { in: 9..50 }, allow_blank: true
	validates :phone, uniqueness: true, length: { in: 10..11 }, format: { with: VALID_PHONE_REGEX }, allow_blank: true
	validates :business_hours, length: { in: 12..75 }, allow_blank: true
	validates :man_sauna_temp, numericality: { only_integer: true }, allow_blank: true, inclusion: { in: 1..250 }
	validates :man_water_temp, numericality: { only_integer: true }, allow_blank: true, inclusion: { in: 1..100 }
	validates :woman_sauna_temp, numericality: { only_integer: true }, allow_blank: true, inclusion: { in: 1..250 }
	validates :woman_water_temp, numericality: { only_integer: true }, allow_blank: true, inclusion: { in: 1..100 }
end
