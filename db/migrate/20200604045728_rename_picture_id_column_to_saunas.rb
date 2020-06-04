class RenamePictureIdColumnToSaunas < ActiveRecord::Migration[6.0]
  def change
    rename_column :saunas, :picture_id, :picture
  end
end
