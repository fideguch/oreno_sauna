json.extract! sauna, :id, :sauna_name, :picture, :area, :address, :business_hours, :phone, :man_not_exist, :woman_not_exist, :man_sauna_temp, :woman_sauna_temp, :man_water_temp, :woman_water_temp, :created_at, :updated_at
json.url sauna_url(sauna, format: :json)
