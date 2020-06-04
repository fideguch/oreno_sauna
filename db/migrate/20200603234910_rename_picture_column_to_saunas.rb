class RenamePictureColumnToSaunas < ActiveRecord::Migration[6.0]
  def change
    rename_column :saunas, :picture, :picture_id
  end
end
