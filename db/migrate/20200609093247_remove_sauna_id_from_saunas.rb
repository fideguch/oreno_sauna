class RemoveSaunaIdFromSaunas < ActiveRecord::Migration[6.0]
  def change
    remove_reference :saunas, :area, null: false, foreign_key: true
  end
end
