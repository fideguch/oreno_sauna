class AddSaunnerImageToSaunners < ActiveRecord::Migration[6.0]
  def change
    add_column :saunners, :saunner_image, :string
  end
end
