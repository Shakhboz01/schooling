class User < ApplicationRecord
  validates :firstname, uniqueness: :true
  has_many :group_users
  has_many :groups, through: :group_users
  enum role: %i[admin teacher operator student]
  enum status: %i[active waiting inactive]
end
