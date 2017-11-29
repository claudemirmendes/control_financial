class User < ApplicationRecord
  has_secure_password
  validates_presence_of :email
  validates_uniqueness_of :email, case_sensitive: false
  validates_format_of :email, with: /@/
  before_save :downcase_email

  def downcase_email
    self.email = self.email.delete(' ').downcase
  end

  def valid_token
    AuthToken.token_for(self)
  end

  def self.generate_token(user)
    auth_token = user.valid_token
      if (auth_token.nil?)
        token = AuthToken.generate_new_token_for_user(user)
      else
        token = auth_token
      end
      token
  end
end
