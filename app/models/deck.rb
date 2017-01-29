class Deck < ActiveRecord::Base
  has_many :rounds
  has_many :cards
end

# <%= long_form_date(round.created_at) %>
