class User < ActiveRecord::Base
  def self.find_or_create_from_auth(oauth_data)
    user = User.find_or_create_by(provider: oauth_data.provider, uid: oauth_data.uid)

    user.username        = oauth_data.username
    user.access_token    = oauth_data.oauth_token
    user.access_secret   = oauth_data.oauth_verifier
    return user
  end
end
