class User < ActiveRecord::Base
  has_secure_password
  #gives you two methods
  #1. passoword
  #2. authenticate
  has_many :likes
end