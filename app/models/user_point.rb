class UserPoint < ApplicationRecord
  validates :user, uniqueness: true
  belongs_to :user
end
