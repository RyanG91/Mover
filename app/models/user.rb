class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  mount_uploader :image, UserImageUploader

  geocoded_by :area   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates


  has_many :jobs

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true

  def area
    "#{city}, #{state}"
  end

  def can_update?(user)
    self.has_role?(:admin) || (user.email == self.email)
  end

  def can_delete?(user)
    self.has_role?(:admin) || self.has_role?(:moderator) || (user.email == self.email)
  end

  def can_edit?(user)
    self.has_role?(:admin) || self.has_role?(:moderator) || (user.email == self.email)
  end

end
