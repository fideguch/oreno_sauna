class RemoveAreaFromSaunas < ActiveRecord::Migration[6.0]
  def up
    remove_column :saunas, :area
  end

  def down
    add_column :saunas, :area, :string
  end
end
