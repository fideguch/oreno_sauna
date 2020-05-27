class CreateSaunas < ActiveRecord::Migration[6.0]
  def change
    create_table :saunas do |t|
      t.string :sauna_name
      t.string :picture
      t.string :area
      t.string :address
      t.string :business_hours
      t.string :phone
      t.boolean :man_not_exist
      t.boolean :woman_not_exist
      t.integer :man_sauna_temp
      t.integer :woman_sauna_temp
      t.integer :man_water_temp
      t.integer :woman_water_temp

      t.timestamps
    end
  end
end
