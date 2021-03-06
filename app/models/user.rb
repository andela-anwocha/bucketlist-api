class User < ActiveRecord::Base
  has_secure_password
  has_many :bucket_lists, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/
  }
end
