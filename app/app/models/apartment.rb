class Apartment < ApplicationRecord
  def full_address
    @latitude = Apartment.last.latitude
    @longitude= Apartment.last.longitude
  end
end
