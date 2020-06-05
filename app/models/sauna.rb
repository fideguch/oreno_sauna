class Sauna < ApplicationRecord
	before_create :default_picture
	has_one_attached :picture

	include SearchFacility

	# photoのデフォルト画像を設定
	def default_picture
		if !self.picture.attached?
			self.picture.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'noimage.png')), filename: 'noimage.png', content_type: 'image/png')
		end
	end
	# sauna_nameのユニーク（※DB側でもユニーク保証済）
	validates :sauna_name, uniqueness: true, presence: true
	validates :area, presence: true
end
