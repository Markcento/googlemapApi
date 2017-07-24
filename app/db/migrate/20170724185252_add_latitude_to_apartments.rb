class AddLatitudeToApartments < ActiveRecord::Migration[5.1]
  def change
    add_column :apartments, :latitude, :decimal
  end
end
