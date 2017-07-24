class AddPhoneNumberToApartments < ActiveRecord::Migration[5.1]
  def change
    add_column :apartments, :phone_number, :string
  end
end
