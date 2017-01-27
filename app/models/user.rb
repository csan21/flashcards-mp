class User < ActiveRecord::Base
  has_many :rounds, foreign_key: :player_id
  has_many :guesses, through: :rounds

  validates :email, :name, presence: true, uniqueness: true
  validates :email, format: { with: /\A[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\z/ }

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(plaintext)
    @password = BCrypt::Password.create(plaintext)
    self.hashed_password = @password
  end

  def authenticate(password)
    self.password == password
  end
end
