class AddReferencesToSaunas < ActiveRecord::Migration[6.0]
  def change
    add_reference :saunas, :area, null: false, foreign_key: true
  end
end
