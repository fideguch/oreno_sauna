class RenameAreaColumnToAreas < ActiveRecord::Migration[6.0]
  def change
    rename_column :areas, :area, :area_name
  end
end
