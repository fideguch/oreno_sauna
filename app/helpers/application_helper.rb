module ApplicationHelper
	def default_meta_tags
	  {
		site: '俺のサウナ | サウナ活動記録アプリ',
		title: '俺のサウナ | サウナ活動記録アプリ',
		reverse: true,
		separator: '|',
		description: '俺のサウナは、サウナーが作るサウナ施設コミュニティです。サ活に行った施設を登録し、あなたの体験を「一言」で教えてください！サウナの良さを世の中に広げましょう。',
		keywords: 'サウナ',
		canonical: request.original_url,
		noindex: ! Rails.env.production?,
		icon: [
		  { href: image_url('fav.png') },
		  { href: image_url('fav.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' }
		],
		og: {
		  site_name: '俺のサウナ | サウナ活動記録アプリ',
		  title: '俺のサウナ | サウナ活動記録アプリ',
		  description: '俺のサウナは、サウナーが作るサウナ施設コミュニティです。サ活に行った施設を登録し、あなたの体験を「一言」で教えてください！サウナの良さを世の中に広げましょう。',
		  type: 'website',
		  url: request.original_url,
		  image: image_url('sns_card.png'),
		  locale: 'ja_JP'
		},
		twitter: {
		  card: 'summary_large_image',
		  site: '@__ideguchi'
		},
		fb: {
		  app_id: '100028198952133'
		}
	  }
	end
end
