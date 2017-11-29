class AuthToken < ApplicationRecord
  belongs_to: user

  scope :by_user_id, -> (user_id) { where(user_id: user_id) }

  def self.generate_new_token_for_user(user)
    auth_token = AuthToken.new(user_id: user.id)
    auth_token.token = SecureRandom.urlsafe_base64(25, false)
    auth_token.save
    auth_token
  end

  def self.token_for(user)
    AuthToken.by_user_id(user.id).first
  end
end
