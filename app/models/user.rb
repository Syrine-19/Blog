class User < ApplicationRecord
  # require "securerandom"

  # has_secure_password

validates :email, presence: true
validates :password, presence: true
validates :username, presence: true, uniqueness: true

  devise :database_authenticatable, :registerable, :timeoutable,
  :recoverable, :rememberable, :validatable
  
  has_many :articles
end
