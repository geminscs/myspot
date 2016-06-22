class User < ActiveRecord::Base
  has_many :articles
  has_many :comments
  validates :user_name, presence: true, uniqueness: true
  has_secure_password
end
