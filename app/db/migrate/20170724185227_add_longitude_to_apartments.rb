class AddLongitudeToApartments < ActiveRecord::Migration[5.1]
  def change
    add_column :apartments, :longitude, :decimal
  end
end
