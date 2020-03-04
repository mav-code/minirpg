class User < ApplicationRecord
  has_many :characters

  validates_presence_of :username
  validates_uniqueness_of :username

   def index

   end

  has_secure_password

end
