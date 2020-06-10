class ChangeColumnToSauna < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column :saunas, :area, :references, foreign_key: true, index: true, null: false
    end

    def down
      change_column :saunas, :area, :string
    end
  end
end
