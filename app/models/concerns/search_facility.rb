module SearchFacility
	extend ActiveSupport::Concern

	included do

		scope :search_by_name, proc { |name_query|
			where("sauna_name LIKE '%' || ? || '%'", name_query)
		}

		scope :search_by_station, proc { |station_query|
			# area_data = Area.select("area_name").where(area_name: station_query)
			Sauna.joins(:area).where("areas.area_name = ?", station_query)

			# reportの個数を持ってきたかったがうまくいかなかった。
			# sauna_data = Sauna.left_joins(:reports).where(id: area_data)
			# reports_data = sauna_data.group(:id).order("count(id) dest")
		}

		scope :search_sauna, proc { |queries|
			facilities = self
			facilities = facilities.search_by_name(queries[:facility_name_query]) if queries[:facility_name_query].present?
			facilities = search_by_station(queries[:facility_area_query]) if queries[:facility_area_query].present?
			if facilities != self
				facilities
			else
				where({})
			end
		}
	end
end
