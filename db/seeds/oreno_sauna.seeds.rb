sauna= [
{ sauna_name: "改良湯", man_sauna_temp: 100, man_water_temp: 14, woman_sauna_temp: 90, woman_water_temp: 14 },
{ sauna_name: "オアシスサウナ アスティル", man_sauna_temp: 86, man_water_temp: 15 },
{ sauna_name: "上野サウナ＆カプセルホテル北欧", man_sauna_temp: 110, man_water_temp: 15, woman_not_exist: true },
{ sauna_name: "かるまる", man_sauna_temp: 90, man_water_temp: 8, woman_not_exist: true },
{ sauna_name: "サウナセンター", man_sauna_temp: 98, man_water_temp: 13, woman_not_exist: true },
{ sauna_name: "スパ＆カプセル ニューウイング", man_sauna_temp: 89, man_water_temp: 16, woman_not_exist: true },
{ sauna_name: "天然温泉 テルマー湯", man_sauna_temp: 94, man_water_temp: 16, woman_sauna_temp: 90, woman_water_temp: 17 },
{ sauna_name: "サウナリゾート オリエンタル", man_sauna_temp: 100, man_water_temp: 17, woman_not_exist: true },
{ sauna_name: "タイムズ スパ・レスタ", man_sauna_temp: 100, man_water_temp: 16, woman_sauna_temp: 50, woman_water_temp: 20 },
{ sauna_name: "天空のアジト マルシンスパ", man_sauna_temp: 104, man_water_temp: 20, woman_not_exist: true },
{ sauna_name: "スパ ラクーア", man_sauna_temp: 98, man_water_temp: 17, woman_sauna_temp: 90, woman_water_temp: 22 },
{ sauna_name: "ひだまりの泉萩の湯", man_sauna_temp: 90, man_water_temp: 19, woman_sauna_temp: 90, woman_water_temp: 29 }
]
sauna.each do |params|
	Sauna.create!(params) unless Sauna.find_by(sauna_name: params[:sauna_name])
end

areas= [
{ area_name: '渋谷', sauna: Sauna.find_by(id: 1) },
{ area_name: '新橋', sauna: Sauna.find_by(id: 2) },
{ area_name: '上野', sauna: Sauna.find_by(id: 3) },
{ area_name: '池袋', sauna: Sauna.find_by(id: 4) },
{ area_name: '鶯谷', sauna: Sauna.find_by(id: 5) },
{ area_name: '錦糸町', sauna: Sauna.find_by(id: 6) },
{ area_name: '新宿', sauna: Sauna.find_by(id: 7) },
{ area_name: '赤坂見附', sauna: Sauna.find_by(id: 8) },
{ area_name: '池袋', sauna: Sauna.find_by(id: 9) },
{ area_name: '笹塚', sauna: Sauna.find_by(id: 10) },
{ area_name: '後楽園', sauna: Sauna.find_by(id: 11) },
{ area_name: '鶯谷', sauna: Sauna.find_by(id: 12) }
]
areas.each do |area_data|
	Area.create!(area_data)
end

users= [
{ user_name: '佐藤', email: 'test1@example.com', password: 'testtest' },
{ user_name: '鈴木', email: 'test2@example.com', password: 'testtest' },
{ user_name: '高橋', email: 'test3@example.com', password: 'testtest' },
{ user_name: '田中', email: 'test4@example.com', password: 'testtest' },
{ user_name: '伊藤', email: 'test5@example.com', password: 'testtest' }
]
users.each do |record|
 Saunner.create!(record) unless Saunner.find_by(email: record[:email])
end

reports= [
{ sauna_rate: 100, water_bath_rate: 100, title: "いつもお世話になっています", comment: "サウナも水風呂もちょうどいい", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "1番好きなサウナ", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "水風呂の温度が絶妙", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "文句なしでした", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "1番行ってるサウナ", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "水分補給はお忘れなく", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "また行きたい", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "生きてて1番整った", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "こんな気持ち初めて", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "念願のサウナ", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "水はキンキンが1番", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "水風呂の入り過ぎには注意", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "じっくりサウナを楽しむ空間", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "意外とアットホーム", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "どのサウナより好き", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "水分補給はしっかり！", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "整うならここ", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "整わないと人間じゃない", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "神", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "いつでも僕の味方のサウナ", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "どのサウナよりもいい", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "僕のサ道の原点", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "ちゃんとサウナだった！", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "水うますぎワロタ", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "サウナここで知った", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "毎日のルーティン", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "誰よりも通った", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "相変わらず神", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "いかないと体調崩す", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "本当に最高のサウナ", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "あー、最高。", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "サウナって気持ちいいな", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "ここ誰にでもおすすめできる", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "水風呂気持ちいいです", sauna: "data", saunner: "data" }
]

reports.each do |report|
	report[:sauna] = Sauna.find_by(id: rand(1..12))
	report[:saunner] = Saunner.find_by(id: rand(1..5))
end

reports.each do |record|
	Report.create!(record)
end
