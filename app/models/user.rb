class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  geocoded_by :area   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates


  has_many :jobs

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true

  def area
    "#{city}, #{state}"
  end

end
