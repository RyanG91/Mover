class Request < ApplicationRecord
  resourcify

  geocoded_by :full_street_address   # can also be an IP address
  geocoded_by :destination
  after_validation :geocode          # auto-fetch coordinates

  def full_street_address
    "#{from_address}, #{from_city}, #{from_state}"
  end

  def destination
    "#{to_address}, #{to_city}, #{to_state}"
  end

end
