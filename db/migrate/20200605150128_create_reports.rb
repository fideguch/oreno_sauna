class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.integer :sauna_rate
      t.integer :water_bath_rate
      t.string :title
      t.text :comment
      t.string :sakatsu_photo
      t.references :saunner, null: false, foreign_key: true
      t.references :sauna, null: false, foreign_key: true

      t.timestamps
    end
  end
end
