class User < ActiveRecord::Base
  has_many :rounds, foreign_key: :player_id
  has_many :guesses, through: :rounds
end
