class Round < ActiveRecord::Base
  belongs_to :player, class_name: :User
  belongs_to :deck
  has_many :guesses
end
