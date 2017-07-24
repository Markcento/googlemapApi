class AddClosingToApartments < ActiveRecord::Migration[5.1]
  def change
    add_column :apartments, :closing, :time
  end
end
