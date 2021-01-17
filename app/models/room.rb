class Room < ApplicationRecord
  has_many :room_users
  has_many :UsersController, through:  :room_users
end
