class AddIndexSaunaNameUniqueToSaunas < ActiveRecord::Migration[6.0]
  def change
    add_index :saunas, :sauna_name, unique: true
  end
end
