module SearchFacility
	extend ActiveSupport::Concern
	included do
		table = "saunas"
		scope :search_by_name, proc { |name_query|
			query = <<-SQL
	SELECT *
	FROM :table
	WHERE sauna_name LIKE '%' || :name_query || '%'
			SQL
			find_by_sql([query, {table: table, name_query: name_query}])
		}
		scope :search_by_station, proc { |station_query|
			query = <<-SQL
	SELECT *
	FROM :table
	WHERE area = :station_query
			SQL
			find_by_sql([query, {table: table, station_query: station_query}])
		}
		scope :search_sauna, proc { |queries|
			facilities = self
			facilities = facilities.search_by_name(queries[:facility_name_query]) if queries[:facility_name_query].present?
			facilities = facilities.search_by_station(queries[:facility_area_query]) if queries[:facility_area_query].present?
			if facilities != self
				facilities
			else
				where({})
			end
		}
	end
end
