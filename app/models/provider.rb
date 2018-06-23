class Provider < ApplicationRecord

  geocoded_by :provider_geocode   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def provider_geocode
    "#{city}, #{state}"
  end

end
