sauna= [
{ sauna_name: "改良湯" },
{ sauna_name: "オアシスサウナ アスティル" },
{ sauna_name: "北欧" },
{ sauna_name: "天空のアジト マルシンスパ" }
]
sauna.each do |params|
	Sauna.create!(params) unless Sauna.find_by(sauna_name: params[:sauna_name])
end

areas= [
{ area_name: '渋谷', sauna: Sauna.find_by(id: 1) },
{ area_name: '新橋', sauna: Sauna.find_by(id: 2) },
{ area_name: '上野', sauna: Sauna.find_by(id: 3) },
{ area_name: '笹塚', sauna: Sauna.find_by(id: 4) }
]
areas.each do |area_data|
	Area.create!(area_data) unless Area.find_by(area_name: area_data[:area_name])
end

users= [
{ user_name: 'test1', email: 'test1@example.com', password: 'testtest1' },
{ user_name: 'test2', email: 'test2@example.com', password: 'testtest2' },
{ user_name: 'test3', email: 'test3@example.com', password: 'testtest3' }
]
users.each do |record|
 Saunner.create!(record) unless Saunner.find_by(email: record[:email])
end

reports= [
{ sauna_rate: 100, water_bath_rate: 100, title: "いつもお世話になっています", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "仕事終わりにぴったり", sauna: "data", saunner: "data" },
{ sauna_rate: 100, water_bath_rate: 100, title: "水風呂気持ちいいです", sauna: "data", saunner: "data" }
]

reports.each do |report|
	report[:sauna] = Sauna.find_by(id: rand(1..3))
	report[:saunner] = Saunner.find_by(id: rand(1..3))
end

reports.each do |record|
	Report.create!(record)
end
