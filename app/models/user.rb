class User < ApplicationRecord
  has_secure_password
  has_many :workouts, dependent: :destroy

  validates :email, presence: true, uniqueness: true
end
