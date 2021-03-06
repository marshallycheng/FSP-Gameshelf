class User < ApplicationRecord
  attr_reader :password

  validates :password_digest, :session_token, :username, presence: true
  validates :username, uniqueness: true, length: {maximum: 20}
  validates :password, length: { minimum: 6}, allow_nil: true

  has_many :reviews
  has_many :favorites
  
  has_many :favorited_games,
  through: :favorites,
  source: :game

  before_validation :ensure_session_token

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    user && user.is_password?(password) ? user : nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64
    self.save
    self.session_token
  end

  private

  def ensure_session_token
    self.session_token || reset_session_token!
  end
end
