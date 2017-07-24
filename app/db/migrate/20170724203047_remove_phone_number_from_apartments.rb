class RemovePhoneNumberFromApartments < ActiveRecord::Migration[5.1]
  def change
    remove_column :apartments, :phone_number, :integer
  end
end
