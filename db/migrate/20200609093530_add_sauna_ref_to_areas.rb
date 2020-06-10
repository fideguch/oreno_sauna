class AddSaunaRefToAreas < ActiveRecord::Migration[6.0]
  def change
    add_reference :areas, :sauna, index: true, null: false, foreign_key: true
  end
end
