class Move < ApplicationRecord
  resourcify

  scope(:title, -> (title) { where("LOWER(title) like ?", "%#{title.downcase}%")})
  scope(:owner, -> (owner) { where("LOWER(owner) like ?", "%#{owner.downcase}%")})
  scope(:cost, -> (cost) { where cost: cost })

end
