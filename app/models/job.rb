class Job < ApplicationRecord
  has_one :user, as: :owner
  has_one :user, as: :email
end
